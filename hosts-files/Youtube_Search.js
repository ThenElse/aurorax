registerPlugin({
    name: 'Youtube Arama | AuroraX',
    version: '1.0.0',
    engine: '>= 0.9.21',
    backends: ["ts3", "discord"],
    description: 'AuroraX özel, sorunsuz versiyonu.',
    author: 'AuroraX (powered by NT5)',
    vars: [
        {
            name: 'yt_apikey',
            title: 'API KEY (AIzaSyAML2FOcJtzh3wwIf2rroBADygoyAQYzjk)',
            type: 'string'
        },
        {
            name: 'ytdl_action',
            title: 'Youtube-DL ne yapacak?',
            type: 'select',
            indent: 1,
            options: [
                'Hiçbir şey',
                'Şarkıyı indir',
                'Sadece çal'
            ]
        },
        {
            name: 'ytdl_playback',
            title: 'Oynatma işlemi',
            type: 'select',
            indent: 1,
            options: [
                'Sırayla',
                'Hemen oynat'
            ]
        },
        {
            name: 'yt_catchurl',
            title: 'Youtube linklerini algıla',
            type: 'checkbox'
        },
        {
            name: 'yt_maxresults',
            title: 'Maksimum youtube videoları (1~>=50)',
            type: 'number',
            placeholder: '1'
        },
        {
            name: 'yt_maxduration',
            title: 'Maksimum video uzunluğu (Orijinal: 900 saniye)',
            type: 'number',
            placeholder: '900'
        },
        {
            name: 'yt_randomplay',
            title: 'Rastgele video oynat',
            type: 'checkbox'
        },
        {
            name: 'command_trigger',
            title: 'Arama komutu',
            type: 'string',
            placeholder: 'youtube'
        },
        {
            name: 'command_message',
            title: 'Mesaj formatı',
            type: 'multiline',
            placeholder: '[B][color=purple]AuroraX[/color] | [color=blue]Youtube Arama[/color] [color=green]~[/color] {title} oynatılıyor...[/B]'
        },
        {
            name: 'yt_titleblacklist',
            title: 'Yasaklı video isimleri',
            type: 'string',
            placeholder: '10 saatlik, aleyna tilki...'
        },
        {
            name: 'command_adminpermissions',
            title: 'Yetkili Kullanıcılar (ID veya isim)',
            type: 'array',
            vars: [
                {
                    name: 'user',
                    type: 'string',
                    indent: 2,
                    placeholder: 'İsim veya id'
                }
            ]
        },
        {
            name: 'command_blacklistusers',
            title: 'Yasaklı kullanıcılar ',
            type: 'string',
            placeholder: 'memet, birrol...'
        },
        {
            name: 'command_permissionsServerGroups',
            title: 'Hangi grupların gönderdiği arama komutu kabul edilecek',
            type: 'array',
            vars: [
                {
                    name: 'group',
                    type: 'string',
                    indent: 2,
                    placeholder: 'Grup ismi veya id'
                }
            ]
        }
        /*
         TODO
         - [FEATURE] Add a playlist support
        {
            name: 'catch_url_playlist',
            title: 'Catch YouTube playlist',
            type: 'select',
            options: [
                'Yes',
                'No'
            ]
        }
        */
    ]
}, function (sinusbot, config, manifest) {

    var backend = require('backend');
    var engine = require('engine');
    var event = require('event');

    // Script utils

    // String format util
    if (!String.prototype.format) {
        String.prototype.format = function () {
            var str = this.toString();
            if (!arguments.length) {
                return str;
            }
            var args = typeof arguments[0];
            args = (("string" === args || "number" === args) ? arguments : arguments[0]);
            for (var arg in args) {
                str = str.replace(RegExp("\\{" + arg + "\\}", "gi"), args[arg]);
            }
            return str;
        }
    }

    // String truncate util http://stackoverflow.com/questions/1199352
    String.prototype.trunc = function (n, useWordBoundary) {
        if (this.length <= n) { return this; }
        var subString = this.substr(0, n - 1);
        return (useWordBoundary
                ? subString.substr(0, subString.lastIndexOf(' '))
                : subString) + "...";
    };

    // Polyfill util https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Object/assign#Polyfill
    if (typeof Object.assign !== 'function') {
        Object.assign = function (target, varArgs) { // .length of function is 2
            'use strict';
            if (target === null) { // TypeError if undefined or null
                throw new TypeError('Cannot convert undefined or null to object');
            }

            var to = Object(target);

            for (var index = 1; index < arguments.length; index++) {
                var nextSource = arguments[index];

                if (nextSource !== null) { // Skip over if undefined or null
                    for (var nextKey in nextSource) {
                        // Avoid bugs when hasOwnProperty is shadowed
                        if (Object.prototype.hasOwnProperty.call(nextSource, nextKey)) {
                            to[nextKey] = nextSource[nextKey];
                        }
                    }
                }
            }
            return to;
        };
    }

    // Dateformat youtube apiv3 to seconds http://stackoverflow.com/questions/22148885
    function youtube_duration_seconds (duration) {
        var a = duration.match(/\d+/g);

        if (duration.indexOf('M') >= 0 && duration.indexOf('H') === -1 && duration.indexOf('S') === -1) {
            a = [0, a[0], 0];
        }

        if (duration.indexOf('H') >= 0 && duration.indexOf('M') === -1) {
            a = [a[0], 0, a[1]];
        }
        if (duration.indexOf('H') >= 0 && duration.indexOf('M') === -1 && duration.indexOf('S') === -1) {
            a = [a[0], 0, 0];
        }

        duration = 0;

        if (a.length === 3) {
            duration = duration + parseInt(a[0]) * 3600;
            duration = duration + parseInt(a[1]) * 60;
            duration = duration + parseInt(a[2]);
        }

        if (a.length === 2) {
            duration = duration + parseInt(a[0]) * 60;
            duration = duration + parseInt(a[1]);
        }

        if (a.length === 1) {
            duration = duration + parseInt(a[0]);
        }
        return duration
    }

    // D:H:M:S
    function seconds_to_human (seconds) {
        var years = Math.floor(seconds / 31536000);
        seconds = Math.floor(seconds - 31536000 * years);
        var months = Math.floor(seconds / 2628000);
        seconds = Math.floor(seconds - 2628000 * months);
        var weeks = Math.floor(seconds / 604800);
        seconds = Math.floor(seconds - 604800 * weeks);
        var days = Math.floor(seconds / 86400);
        seconds = Math.floor(seconds - 86400 * days);
        var hours = Math.floor(seconds / 3600);
        seconds = Math.floor(seconds - 3600 * hours);
        var minutes = Math.floor(seconds / 60);
        seconds = Math.floor(seconds - 60 * minutes);

        var messages = [];

        if (years > 0)
            messages.push("{0}years".format(years));
        if (months > 0)
            messages.push("{0}months".format(months));
        if (weeks > 0)
            messages.push("{0}weeks".format(weeks));
        if (days > 0)
            messages.push("{0}days".format(days));
        if (hours > 0)
            messages.push("{0}hrs".format(hours));
        if (minutes > 0)
            messages.push("{0}min".format(minutes));
        if (seconds > 0)
            messages.push("{0}secs".format(seconds))

        return (messages.length > 0 ? messages.join(", ") : "{0}secs".format(seconds));
    }

    // {000,000,...}
    function addCommas (nStr) {
        nStr += '';
        var x = nStr.split('.'),
            x1 = x[0],
            x2 = x.length > 1 ? '.' + x[1] : '',
            rgx = /(\d+)(\d{3})/;
        while (rgx.test(x1)) {
            x1 = x1.replace(rgx, '$1' + ',' + '$2');
        }
        return x1 + x2;
    }

    // URL format util http://stackoverflow.com/questions/1714786/
    function URLSerialize (obj, prefix) {
        var str = [], p;
        for (p in obj) {
            if (obj.hasOwnProperty(p)) {
                var k = prefix ? prefix + "[" + p + "]" : p, v = obj[p];
                str.push((v !== null && typeof v === "object") ?
                         URLSerialize(v, k) :
                         encodeURIComponent(k) + "=" + encodeURIComponent(v));
            }
        }
        return str.join("&");
    }

    // Plugin Methods
    var youtube = {
        config: {
            api: {
                url: "https://www.googleapis.com/youtube/v3/{path}?{fields}",
                key: config.yt_apikey || 0,
                maxresults: (function () {
                    var mr = parseInt(config.yt_maxresults);
                    return (mr >= 1 && mr <= 50 ? mr : 1);
                }())
            },
            plugin: {
                manifest: {
                    running_time: Math.floor(Date.now() / 1000),
                    version: manifest.version,
                    name: manifest.name,
                    description: manifest.description,
                    authors: [
                        {
                            name: 'NT5',
                            role: 'Main Dev'
                        }
                    ]
                },
                regex: {
                    // !{command}[-{area}] [{text}]
                    cmd: /^!(\w+)(?:-(\w+))?(?:\s(.+))?/,
                    // {videId}
                    youtube: /(?:http|https):\/\/www\.(?:youtube\.com|youtu\.be)\/watch\?v=([\w-]+)/
                },
                command_trigger: config.command_trigger || 'ara',
                catch_url: config.yt_catchurl,
                randomplay: config.yt_randomplay,
                yt_maxduration: config.yt_maxduration || 900,
                yt_titleblacklist: (typeof config.yt_titleblacklist !== 'undefined' && config.yt_titleblacklist.length > 0 ? config.yt_titleblacklist.split(',') : []),
                command_message: config.command_message || '[B][color=purple]AuroraX[/color] | [color=blue]Youtube Arama[/color] [color=green]~[/color] {title} oynatılıyor...[/B]',
                ytdl_action: parseInt(config.ytdl_action) || 0,
                ytdl_playback: parseInt(config.ytdl_playback) || 0,
                server_groups: config.command_permissionsServerGroups || [],
                adminpermissions: config.command_adminpermissions || [],
                blacklistusers: (typeof config.command_blacklistusers !== 'undefined' && config.command_blacklistusers.length > 0 ? config.command_blacklistusers.split(',') : [])
            }
        },
        getJSON: function (options) {
            options = (typeof options !== "object") ? {} : options;

            options.method = options.method || 'GET';
            options.url = options.url || '';
            options.headers = options.headers || { 'Content-Type': 'application/json; charset=UTF-8' };
            options.callback = options.callback || function (err, res) { engine.log(res); };
            options.error_callback = options.error_callback || function (err, res) { engine.log(err); };

            /*
             TODO
              - [ENH] Port to new script engine
            */
            sinusbot.http({
                method: options.method,
                url: options.url,
                timeout: 6000,
                headers: options.headers
            }, function (err, res) {
                if (err || res.statusCode !== 200) {
                    engine.log('İstek gönderilemedi [{error}] Kod: [{code}] Veri: [{data}]'.format({
                        error: err,
                        data: res.data,
                        code: res.statusCode
                    }));
                    options.error_callback(err);
                } else {
                    var json = JSON.parse(res.data);
                    options.callback(json);
                }
            });
        },
        api: {
            search: function (options) {
                options = (typeof options !== "object") ? {} : options;

                options.query = options.query || '';
                options.maxresults = options.maxresults || youtube.config.api.maxresults;
                options.type = options.type || 'video';
                options.fields = options.fields || 'items(snippet/title,snippet/description,snippet/channelTitle,id)';
                options.part = options.part || 'snippet';
                options.api_key = options.api_key || youtube.config.api.key;
                options.callback = options.callback || function (json) { engine.log(json); };
                options.error_callback = options.error_callback || function (error) { engine.log(error); };

                youtube.getJSON({
                    url: youtube.config.api.url.format({
                        path: 'search',
                        fields: URLSerialize({
                            q: options.query,
                            part: options.part,
                            type: options.type,
                            maxResults: options.maxresults,
                            fields: options.fields,
                            key: options.api_key
                        })
                    }),
                    callback: options.callback,
                    error_callback: options.error_callback
                });
            },
            video: function (options) {
                options = (typeof options !== "object") ? {} : options;

                options.videoId = options.videoId || 0;
                options.fields = options.fields || 'items(snippet/title,snippet/description,snippet/channelTitle,id,kind,statistics,contentDetails/duration)';
                options.part = options.part || 'snippet,statistics,contentDetails';
                options.api_key = options.api_key || youtube.config.api.key;
                options.callback = options.callback || function (json) { engine.log(json); };
                options.error_callback = options.error_callback || function (error) { engine.log(error); };

                youtube.getJSON({
                    url: youtube.config.api.url.format({
                        path: 'videos',
                        fields: URLSerialize({
                            id: options.videoId,
                            part: options.part,
                            fields: options.fields,
                            key: options.api_key
                        })
                    }),
                    callback: options.callback,
                    error_callback: options.error_callback
                });
            },
            playlist: function (options) {
                options = (typeof options !== "object") ? {} : options;

                options.playlistId = options.playlistId || 0;
                options.part = options.part || 'snippet';
                options.fields = options.fields || 'items(snippet/title,snippet/description,snippet/channelTitle,id,kind)';
                options.maxResults = options.maxResults || 1;
                options.api_key = options.api_key || youtube.config.api.key;
                options.callback = options.callback || function (json) { engine.log(json); };
                options.error_callback = options.error_callback || function (error) { engine.log(error); };

                youtube.getJSON({
                    url: youtube.config.api.url.format({
                        path: 'playlists',
                        fields: URLSerialize({
                            id: options.playlistId,
                            maxResults: options.maxResults,
                            part: options.part,
                            key: options.api_key
                        })
                    }),
                    callback: options.callback,
                    error_callback: options.error_callback
                });
            },
            playlistItems: function (options) {
                options = (typeof options !== "object") ? {} : options;

                options.playlistId = options.playlistId || 0;
                options.pageToken = options.pageToken || false;
                options.part = options.part || 'contentDetails';
                options.maxResults = options.maxResults || 50;
                options.api_key = options.api_key || youtube.config.api.key;
                options.callback = options.callback || function (json) { engine.log(json); };
                options.error_callback = options.error_callback || function (error) { engine.log(error); };

                youtube.getJSON({
                    url: youtube.config.api.url.format({
                        path: 'playlistItems',
                        fields: URLSerialize({
                            playlistId: options.playlistId,
                            maxResults: options.maxResults,
                            part: options.part,
                            key: options.api_key
                        })
                    }),
                    callback: options.callback,
                    error_callback: options.error_callback
                });
            }
        },
        msg: function (options) {
            options = (typeof options !== "object") ? {} : options;

            options.text = options.text || 'ravioli ravioli';
            options.mode = options.mode || 0;
            options.backend = options.backend || backend;
            options.client = options.client || false;
            options.channel = options.channel || options.backend.getCurrentChannel();

            var maxlength = 800;
            var timeoutdelay = 125;

            switch (engine.getBackend()) {
                case "discord":
                    options.mode = 2;
                    break;
                case "ts3":
                default:
                    break;
            }

            /*
             TODO
             - [BUG] Make sure if works in all cases
            */

            var parse_msg = function (options) {
                if (options.text.length >= maxlength) {
                    var truncated = options.text.trunc(maxlength, true);
                    var new_text = options.text.slice((truncated.length - 3), options.text.length);

                    options.chat(truncated);
                    options.text = new_text;
                    setTimeout(function () {
                        parse_msg(options)
                    }, timeoutdelay);
                } else {
                    options.chat(options.text);
                }
            };

            switch (options.mode) {
                case 1: // Private client message
                    if (options.client) {
                        parse_msg({
                            text: options.text,
                            chat: options.client.chat
                        });
                    } else {
                        options.mode = 0;
                        youtube.msg(options);
                    }
                    break;
                case 2: // Channel message
                    if (options.channel) {
                        parse_msg({
                            text: options.text,
                            chat: options.channel.chat
                        });
                    } else {
                        options.mode = 0;
                        youtube.msg(options);
                    }
                    break;
                default: // Server message
                    parse_msg({
                        text: options.text,
                        chat: options.backend.chat
                    });
                    break;
            }

        },
        commands: {
            'youtube': {
                syntax: 'Kullanım: !{cmd} <video>',
                active: true,
                hidden: true,
                admin: false,
                callback: function (data) {
                    data = (typeof data !== "object") ? {} : data;

                    var msg = function (text) {
                        youtube.msg(Object.assign(data, {
                            text: text
                        }));
                    };

                    var error_callback = function (error) {
                        msg("Kötü istek (API KEY hatalı)");
                        engine.log(error);
                    };

                    youtube.api.search({
                        query: data.text,
                        fields: 'items(id)',
                        callback: function (search) {
                            search = (typeof search !== "object") ? {} : search;
                            search.items = search.items || [];

                            if (search.items.length <= 0) {
                                msg("Arama hatası (Video bulunamadı)");
                            } else {
                                var playback = false;
                                var items = search.items;

                                items.forEach(function (item) {
                                    item = (typeof item !== "object") ? {} : item;
                                    item.id = item.id || {};
                                    item.id.videoId = item.id.videoId || 0;
                                    item.id.kind = item.id.kind || 'default';

                                    youtube.api.video({
                                        videoId: item.id.videoId,
                                        callback: function (video) {
                                            var probability = youtube.config.plugin.randomplay ? (Math.random() >= (1.0 - (1 / items.length))) : true;

                                            youtube.callbacks.video_message({
                                                msg: data,
                                                video: video
                                            });

                                            if (!playback && items[items.length - 1].id.videoId === video.items[0].id) {
                                                if (youtube.callbacks.video_playback({ video: video })) {
                                                    playback = true;
                                                } else {
                                                    youtube.msg(Object.assign(data, {
                                                        text: 'Bu video filtrelerimiz ile eşleşmiyor.',
                                                        mode: 1
                                                    }));
                                                }
                                            } else if (!playback && probability) {
                                                if (youtube.callbacks.video_playback({ video: video })) {
                                                    playback = true;
                                                }
                                            }
                                        },
                                        error_callback: error_callback
                                    });
                                });
                            }
                        },
                        error_callback: error_callback
                    });
                }
            },
            'exec': {
                syntax: 'Kullanım: !{cmd}-{par} <video>',
                active: true,
                hidden: true,
                admin: true,
                callback: function (data) {
                    data = (typeof data !== "object") ? {} : data;

                    try {
                        eval((data.text));
                    } catch(e) {
                        youtube.msg(Object.assign(data, {
                            text: e
                        }));
                    }
                }
            },
            getCommands: (function () {
                var commands = [];
                Object.keys(youtube.commands).forEach(function (key) {
                    var command = youtube.commands[key];
                    if (command.active && !command.hidden) {
                        commands.push(key);
                    }
                });
                return commands || false;
            })
        },
        callbacks: {
            video_message: function (data) {
                data = (typeof data !== "object") ? {} : data;

                data.video = data.video || {};
                data.msg = data.msg || {};

                data.message_format = data.message_format || youtube.config.plugin.command_message;

                var msg = function (text) {
                    youtube.msg(Object.assign(data.msg, {
                        text: text
                    }));
                };

                data.video.items = data.video.items || [];

                data.video.items.forEach(function (item) {
                    item = (typeof item !== "object") ? {} : item;
                    item.kind = item.kind || 'default';
                    item.id = item.id || 0;

                    item.snippet = item.snippet || {};
                    item.snippet.title = item.snippet.title || 'no video';
                    item.snippet.description = item.snippet.description || 'no video';
                    item.snippet.channelTitle = item.snippet.channelTitle || 'no video';

                    item.contentDetails = item.contentDetails || {};
                    item.contentDetails.duration = item.contentDetails.duration || '0S';

                    item.statistics = item.statistics || {};
                    item.statistics.commentCount = item.statistics.commentCount || 0;
                    item.statistics.viewCount = item.statistics.viewCount || 0;
                    item.statistics.likeCount = item.statistics.likeCount || 0;
                    item.statistics.dislikeCount = item.statistics.dislikeCount || 0;
                    item.statistics.favoriteCount = item.statistics.favoriteCount || 0;

                });

                if (data.video.items.length > 0) {
                    var item = data.video.items[0];

                    if (item.kind === 'youtube#video') {
                        var str_var = {
                            title: item.snippet.title,
                            description_complete: item.snippet.description,
                            description: item.snippet.description.trunc(160),
                            video_id: item.id,
                            yt_link: 'http://www.youtube.com/watch?v={0}'.format(item.id),
                            upload_by: item.snippet.channelTitle,
                            duration: seconds_to_human(youtube_duration_seconds(item.contentDetails.duration)),
                            commentCount: addCommas(item.statistics.commentCount),
                            viewCount: addCommas(item.statistics.viewCount),
                            likeCount: addCommas(item.statistics.likeCount),
                            dislikeCount: addCommas(item.statistics.dislikeCount),
                            favoriteCount: addCommas(item.statistics.favoriteCount)
                        };

                        // Send message
                        msg(data.message_format.format(str_var));
                    } else {
                        msg("Arama hatası (Bilinmeyen tür)");
                        engine.log(data.video);
                    }
                } else {
                    msg("Arama hatası (Bulunamadı)");
                }
            },
            video_playback: function (data) {
                data = (typeof data !== "object") ? {} : data;

                data.video = data.video || {};
                data.video.items = data.video.items || [];

                data.video.items.forEach(function (item) {
                    item = (typeof item !== "object") ? {} : item;
                    item.kind = item.kind || 'default';
                    item.id = item.id || 0;
                    item.snippet = item.snippet || {};
                    item.snippet.title = item.snippet.title || 'no video';
                    item.contentDetails = item.contentDetails || {};
                    item.contentDetails.duration = item.contentDetails.duration || '0S';
                });

                // Check for valid json
                if (data.video.items.length > 0) {
                    var media = require('media');

                    var video = data.video.items[0];

                    var playable = {
                        title: function () {
                            var video_title = video.snippet.title.toLowerCase();
                            var blacklist = false;
                            youtube.config.plugin.yt_titleblacklist.forEach(function (word) {
                                if (!blacklist && video_title.indexOf(word.toLowerCase()) !== -1) {
                                    blacklist = true;
                                }
                            });
                            return (blacklist ? false : true);
                        },
                        duration: function () {
                            var video_duration = youtube_duration_seconds(video.contentDetails.duration);
                            if (video_duration <= youtube.config.plugin.yt_maxduration) return true;
                            return false;
                        }
                    };
                    if (!playable.title() || !playable.duration()) return false;

                    var videoId = video.id;
                    var queue = (youtube.config.plugin.ytdl_playback === 0 ? true : false);

                    /*
                     {youtube.config.plugin.ytdl_action}
                      1: Download
                      2: Stream
                      0: Nothing
                    */
                    switch (youtube.config.plugin.ytdl_action) {
                        case 1: // Download
                            if (queue) {
                                if (media.ytdl(videoId, false) && media.enqueueYt(videoId)) {
                                    engine.log("Download & append to queue: " + videoId);
                                } else {
                                    engine.log("Cannot enqueue: " + videoId);
                                }
                            } else {
                                if (media.ytdl(videoId, (queue ? false : true))) {
                                    engine.log("Donwload & play: " + videoId);
                                } else {
                                    engine.log("Can't download: " + videoId);
                                }
                            }
                            return true;
                        case 2: // Stream
                            if (queue) {
                                if (media.enqueueYt(videoId)) {
                                    engine.log("Append to queue: " + videoId);
                                } else {
                                    engine.log("Cannot enqueue: " + videoId);
                                }
                            } else {
                                if (media.yt(videoId)) {
                                    engine.log("Streaming: " + videoId);
                                } else {
                                    engine.log("Can't Streaming: " + videoId);
                                }
                            }
                            return true;
                        default: // Nothing
                            return true;
                    }
                }
                return false;
            }
        }
    };

    // Check for script version
    (function () {
        var store = require('store');
        var version = store.getInstance('script_version')

        if (version !== youtube.config.plugin.manifest.version) {
            engine.log('Your running a different version of the script, resetting configuration, please reconfigure it from web panel.');
            engine.notify('Configure youtube search script');

            store.setInstance('script_version', youtube.config.plugin.manifest.version);
            engine.saveConfig({});
        }

    }());

    // Chat event
    event.on('chat', function (ev) {

        var client = ev.client;
        var channel = ev.channel;
        var bot = backend.getBotClient();

        if (client.isSelf()) return;

        // Check for valid groups
        /*
         TODO
         - [ENH] Better way to split groups
         - [BUG] Make sure if works in all cases
        */
        var permission = {
            config: {
                group: youtube.config.plugin.server_groups.map(function (arr) {
                    return arr.group;
                }),
                client: youtube.config.plugin.adminpermissions.map(function (arr) {
                    return arr.user;
                }),
                banned: youtube.config.plugin.blacklistusers
            },
            group: {
                has_permission: function () {
                    if (permission.config.group.length > 0) {
                        var has_permission = false;
                        client.getServerGroups().forEach(function (group) {
                            if ((!has_permission) && ((permission.config.group.indexOf(group.name()) > -1) || (permission.config.group.indexOf(group.id()) > -1))) {
                                has_permission = true;
                            }
                        });
                        return has_permission;
                    }
                    return true;
                }
            },
            client: {
                is_banned: function () {
                    if (permission.config.banned.length > 0) {
                        if ((permission.config.banned.indexOf(client.name()) > -1) || (permission.config.banned.indexOf(client.uniqueID()) > -1))
                            return true;
                    }
                    return false;
                },
                is_admin: function () {
                    if (permission.config.client.length > 0) {
                        if ((permission.config.client.indexOf(client.name()) > -1) || (permission.config.client.indexOf(client.uniqueID()) > -1))
                            return true;
                    }
                    return false;
                }
            }
        };
        if (!permission.group.has_permission()) {
            engine.log('{client_name}, not have enough permission to execute script'.format({
                client_name: client.name()
            }));
            return;
        }
        if (permission.client.is_banned()) {
            engine.log('{client_name}, is banned from the bot and can\'t execute commands'.format({
                client_name: client.name()
            }));
            return;
        }

        var main_cmd = youtube.commands['youtube'];
        var msg = {
            mode: ev.mode,
            client: client,
            channel: channel
        };
        var cmd, par, text;
        // Regex text: !{command}[-{area}] {text}
        if ((text = youtube.config.plugin.regex.cmd.exec(ev.text)) !== null) {
            cmd = text[1].toLowerCase(); // Command trigger
            par = text[2]; // Command area
            text = text[3]; // Args

            // Chat command equals to command trigger
            if (cmd === youtube.config.plugin.command_trigger.toLowerCase() && main_cmd.active) {
                // If have a sub-command
                if (par) {
                    par = par.toLocaleLowerCase();
                    // Sub-command exists on script
                    if (par in youtube.commands && par !== 'youtube') {
                        // Command have a callback function
                        if ('callback' in youtube.commands[par] && typeof youtube.commands[par].callback === 'function') {
                            var command = youtube.commands[par];

                            // Command is turned off
                            if (!command.active) {
                                engine.log('{command} command is turned off and can\'t execute'.format({
                                    command: par
                                }));
                                return;
                            }

                            if (command.admin && !permission.client.is_admin()) {
                                youtube.msg(Object.assign(msg, {
                                    mode: 1,
                                    text: 'You not have enough permissions'
                                }));
                                return;
                            }

                            // If the command have a syntax to work
                            if (command.syntax) {
                                // Check if chat have text
                                if (text) {
                                    command.callback(Object.assign({
                                        text: text
                                    }, msg));
                                    // No text pass return command syntax
                                } else {
                                    youtube.msg(Object.assign({
                                        text: command.syntax.format({
                                            cmd: cmd,
                                            par: par,
                                            botname: bot.name()
                                        })
                                    }, msg));
                                }
                                // No syntax needed trigger commmand
                            } else {
                                command.callback(msg);
                            }
                            // Send message if not valid callback found
                        } else {
                            youtube.msg(Object.assign(msg, {
                                mode: 1,
                                text: 'Invalid command !{cmd}-{par} not have a valid callback'.format({
                                    cmd: cmd,
                                    par: par
                                })
                            }));
                        }
                        // Sub-command not exists, send valid list
                    } else {
                        youtube.msg(Object.assign(msg, {
                            text: 'Invalid command !{cmd}-{par}. Valid commands: !{cmd}-[{valids}]'.format({
                                cmd: cmd,
                                par: par,
                                valids: youtube.commands.getCommands
                            })
                        }));
                    }
                } else if (text) {
                    // Trigger search {text}
                    main_cmd.callback(Object.assign({
                        text: text
                    }, msg));
                } else {
                    youtube.msg(Object.assign({
                        text: main_cmd.syntax.format({
                            cmd: cmd,
                            valids: youtube.commands.getCommands
                        })
                    }, msg));
                }
            }
            // No command format found; check if a valid Youtube URL
        } else {
            var videoId;
            if (youtube.config.plugin.catch_url && (videoId = youtube.config.plugin.regex.youtube.exec(ev.text)) !== null) {
                videoId = videoId[1];
                // Trigger search {videoId}
                youtube.api.video({
                    videoId: videoId,
                    callback: function (data) {
                        youtube.callbacks.video_message({
                            video: data,
                            msg: msg
                        });

                        if (msg.mode === 2) {
                            youtube.callbacks.video_playback({
                                video: data
                            });
                        }
                    },
                    error_callback: function (data) {
                        youtube.msg(Object.assign(msg, {
                            text: "Kötü istek (API KEY Hatalı)"
                        }));
                    }
                });
            }
        }
    });

    /*
    Event.on('unload', function () {
        engine.log(config);
    });
    */
});
