#!/bin/sh
gametype="0"
gamemode="0"
mapgroup="mg_active"
harita="de_dust2"
maxoyuncu="oy"
tickrate="ics"
gslt="gtok"


case "$1" in
	start)
	screen -d -m -S "csgoserver" ./srcds_run -game csgo -console -usercon +game_type $game_type +game_mode $game_mode +mapgroup $mapgroup -tickrate $tickrate -maxplayers_override $maxoyuncu +map $harita +sv_setsteamaccount $gslt
	;;
	stop)
	screen -S csgoserver -X quit
	;;
	restart)
		$0 stop && $0 start || exit 1
	;;
	*)
		echo "Kullanimi: ${0} {start|stop|restart}"
		exit 2
esac
exit 0



