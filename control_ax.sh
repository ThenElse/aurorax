#!/bin/bash

  #########################################################################
  # Yapımcı: Can Mert                                                     #
  # Site: http://aurorax.sh ~ http://elsethen.org                         #
  #                                                                       #
  #  ADS System And Sinusbot System By Ömer şeran                         #
  #                                                                       #
  #  Bu mesajı gördüğüne göre şifrelemeyi kırmışsın,                      #
  #  Sorun yok, kodları değiştirebilirsin.                                #
  #  Ancak ismimi silip paylaşmaya geldiysen bil ki;                      #
  #                                                                       #
  #  Emek hırsızlığı ile bir yere gelemezsin,                             #
  #  Her zaman üşengeç bir yavşak olarak kalacaksın.                      #
  #  Not: Özellikle Benle Arkadaş Ve Dost Olan Kişiler İçin Geçerlidir ;) # 
  #########################################################################
  
sari="\033[1;37m"
mavi="\033[1;32m"
mavii="\033[1;37m"
mavis="\033[1;31m"            
yesil="\033[1;32m"
kmavi="\033[34m"
saris="\033[33m"
sariss="\033[35m"
s="\033[0m"
ip=`curl -s aurorax.sh/dll/ip.php`
server="http://aurorax.sh/dll"
duyuru=$(wget $server/info.txt -q -O -)
surum=$(wget $server/v1.0.0.php -q -O -)
random_ports=$(( ((RANDOM<<15)|RANDOM) % 49152 + 10000 ))
logfile=`mktemp`
ECHO_PATH=echo;
CD_PATH=cd;
install_path="install"
CLEAR_PATH=clear;
WGET_PATH=wget;
mkdir_path="mkdir"
lol_path="lolcat"
MV_PATH=mv;
CURL_PATH=curl;
sleep_path="sleep"
datafile="/home/aurorax/.auroradata"
log=".axlog"
APT_PATH=apt-get;
backup="/home/aurorax/systembackup.x"
bot_path="ABCDEFG012345678910"
jts_path="/opt/aurorax/jts3servermod/jts3"
baslat_path="bot_baslat.sh"
ipt_path="iptables"
file_path="aurora_x"
dizin_else="/home/aurorax"

function ana_menu {
${CD_PATH} $dizin_else/aurorasucces.x 
./$file_path
}

function control {
${CLEAR_PATH}
 ${ECHO_PATH} -e "\033[33m############################################################${s}"
    ${ECHO_PATH} -e "\033[33m#                                          ${s} \033[33m               #${s}"
    ${ECHO_PATH} -e "\033[33m#   ${mavis}                  Yönetim Menüsü   ${s} \033[33m                   #${s}"
    ${ECHO_PATH} -e "\033[33m#                                          ${s} \033[33m               #${s}"
    ${ECHO_PATH} -e "\033[33m############################################################${s}"
    ${ECHO_PATH} -e "${mavis}1) \033${mavii}TeamSpeak3 - \033[32m(TSPanel Eklentisi Mevcuttur.)\033[0m\033[0m"
    ${ECHO_PATH} -e "${mavis}2) \033${mavii}SinusBot\033[0m"
	${ECHO_PATH} -e "${mavis}3) \033${mavii}JTS3ServerMod\033[0m"
	${ECHO_PATH} -e "${mavis}4) \033${mavii}CSGO\033[0m"
	${ECHO_PATH} -e "${mavis}5) \033${mavii}Minecraft\033[0m"
	${ECHO_PATH} -e "${mavis}6) \033${mavii}TeaSpeak\033[0m"
	${ECHO_PATH} -e "${mavis}7) \033${mavii}MTA\033[0m"
	${ECHO_PATH} -e "${mavis}8) \033${mavii}UzakMasaüstü(xrdp) Sil\033[0m"
    ${ECHO_PATH} -e "${mavis}0) \033${mavii}Ana Menüye Dön${s}\033[32m\033[0m"
    ${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
read alls
case $alls in
 1)
 	 if [ ! -d "/root/server" ] 
     then
	 ${CLEAR_PATH}
	 ${ECHO_PATH} -e "\033[31mTeamSpeak3 Sunucusu Kurulu Değil.\033[33m\e[0m" 1>&2
	 exit 
	 fi
clear
     ${ECHO_PATH} -e "\033[33m########################\e${s}"
     ${ECHO_PATH} -e "\033[33m#                     ${s} \033[33m#\e${s}"
     ${ECHO_PATH} -e "\033[33m#      ${mavi} Teamspeak3 ${s}  \033[33m  #\e${s}"
     ${ECHO_PATH} -e "\033[33m#              ${s} \033[33m       #\e${s}"
     ${ECHO_PATH} -e "\033[33m########################\e${s}"
     ${ECHO_PATH} -e "${mavis}1) TeamSpeak3 Server \033[33mBaşlat\e[0m" 
     ${ECHO_PATH} -e "${mavis}2) TeamSpeak3 Server \033[33mDurdur\e[0m"
     ${ECHO_PATH} -e "${mavis}3) TeamSpeak3 Server \033[33mDurumu\e[0m"
	 ${ECHO_PATH} -e "${mavis}4) TeamSpeak3 Server \033[33mKaldır\e[0m"
     ${ECHO_PATH} -e "${mavis}5) TeamSpeak3 Server \033[33mYatqa Şifresi Değiştir\e[0m"
	 ${ECHO_PATH} -e "${mavis}6) TeamSpeak3 Server \033[33mWebPanel Kurulumu${s} ${mavii}--> (Host Kurulumu Yapmadan Çalışmaz) \033[32m\033[0m"
	 ${ECHO_PATH} -e "${mavis}7) TeamSpeak3 Server \033[33mQuery Port Değiştir${s} "
	 ${ECHO_PATH} -e "${mavis}0) \033${mavii}Ana Menüye Dön${s}\033[32m\033[0m"
	 ${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
     read ts3y
     case $ts3y in
	      1)
           clear
		   ${ECHO_PATH} -e "\033[33m###############################################################" 
           ${ECHO_PATH} -e "\033[1;33m               \033[1;31mTeamSpeak3 Server Başlatılıyor.                 \033[33m"
           ${ECHO_PATH} -e "\033[33m###############################################################${s}"
		   $sleep_path 1
		   ${CD_PATH} /root/server
           su -c "./ts3server_startscript.sh start"
		   ${CD_PATH} /root
           clear
		   ${ECHO_PATH} -e "\033[1;33m###############################################################${s}" 
           ${ECHO_PATH} -e "\033[1;33m               \033[1;31mTeamSpeak3 Server Başlatıldı.                \033[33m"
           ${ECHO_PATH} -e "\033[1;33m###############################################################${s}"
		   ;;   
		   2)
		   clear
		   ${ECHO_PATH} -e "\033[1;33m###############################################################${s}" 
           ${ECHO_PATH} -e "\033[1;33m               \033[1;31mTeamSpeak3 Server Durduruluyor.                 \033[33m"
           ${ECHO_PATH} -e "\033[1;33m###############################################################${s}"
		   $sleep_path 1
		   ${CD_PATH} /root/server
           su -c "./ts3server_startscript.sh stop"
		   ${CD_PATH} /root
           clear
		   ${ECHO_PATH} -e "\033[1;33m###############################################################${s}" 
           ${ECHO_PATH} -e "\033[1;33m               \033[1;31mTeamSpeak3 Server Durduruldu.                 \033[33m"
           ${ECHO_PATH} -e "\033[1;33m###############################################################${s}"
		   ;; 
		   3) 
		   clear
		   ${ECHO_PATH} -e "\033[1;33m###############################################################${s}" 
           ${ECHO_PATH} -e "\033[1;33m               \033[1;31mTeamSpeak3 Server Durumu.                 \033[33m"
           ${ECHO_PATH} -e "\033[1;33m###############################################################${s}"
		   $sleep_path 1
		   ${CD_PATH} /root/server
           su -c "./ts3server_startscript.sh status"
	       ;;
	       4) 
         clear
		 ${ECHO_PATH} -e "\033[1;33m#######################################################" 
         ${ECHO_PATH} -e "\033[1;33m               \033[1;31mTeamSpeak3 Kaldırılıyor                   \033[33m" 
         ${ECHO_PATH} -e "\033[1;33m#######################################################${s}" 
         ${CD_PATH} /root/server
         su -c "./ts3server_startscript.sh stop"
         ${CD_PATH} /root
         rm -r server
         clear
		 ${ECHO_PATH} -e "\033[1;33m#######################################################" 
         ${ECHO_PATH} -e "\033[1;33m              \033[1;31mTeamSpeak3 Başarıyla Kaldırıldı                   \033[33m" 
         ${ECHO_PATH} -e "\033[1;33m#######################################################${s}" 
		 ;; 
	     5) 
         clear
		 ${CD_PATH} /root/
		 ${CD_PATH} server
	     ./ts3server_startscript.sh stop
		$sleep_path 0.1
		clear
		${ECHO_PATH} -e -n "\033[1;36mYeni Şifre: \033[0m"
	    read sifredegis
		./ts3server_startscript.sh start serveradmin_password=$sifredegis
		${ECHO_PATH} -e "\033[1;32mServerQuery şifresi değiştirildi ~ $sifredegis\033[0m"
		;;
		6)
		${CLEAR_PATH}
	 ${ECHO_PATH} -n -e "\033[1;33mHost KurHost Kurulumu Yaptığnızdan Eminmisiniz ? \033[1;37m(\033[1;31mE/h\033[1;37m): \033[0m"
     read RESP
     if [ "$RESP" = "E" ]; then
     ${ECHO_PATH} "Paket Kontrolü Yapılıyor." | $lol_path
	 for i in {5..1};do ${ECHO_PATH} -n "."| $lol_path && sleep 1; done
	 ${CD_PATH} /var/www/html
	 rm -r index.html
	 ${WGET_PATH} -q $server/tspanel.zip
	 unzip tspanel.zip
	 rm -r tspanel.zip
	 ${CLEAR_PATH}
	 ${ECHO_PATH} -e -n "${mavis}Olmasını İstediğin Panel Ve YatQa[Query] Şifresi: ${s}"
	 read yatpw
	 ${ECHO_PATH} -e "\033[36mTeamSpeak3 Sunucunuz Kapatılıyor${s}"
     ${CD_PATH} /root/server
	./ts3server_startscript.sh stop
	 su -c "./ts3server_startscript.sh start serveradmin_password=$yatpw"
	 ${ECHO_PATH} -e "\033[1;33mTSPanel Kuruldu Panel Ve Query Şifreniz:${mavis}$yatpw${s}\033[0m"
	 fi
		;;
		7)
		clear
			${CD_PATH} /root/server
			${ECHO_PATH} -e -n "\033[1;36mEski Query Port: \033[0m"
			read queryeskiport
			${ECHO_PATH} -e -n "\033[1;36mYeni Query Port: \033[0m"
			read querydegis
			./ts3server_startscript.sh stop
			$sleep_path 1
			query_port_change=query_port=$querydegis
			sed -i "s@query_port=$queryeskiport@$query_port_change@" ts3server.ini
			$sleep_path 0.5
			./ts3server_startscript.sh start inifile=ts3server.ini
			${ECHO_PATH} -e "\033[1;32mQuery Port Değiştirildi ~ $querydegis\033[0m"
		;;
        0) 
		ana_menu
        ;;
        *) 
         clear 
         ${ECHO_PATH} -e "\033[36mHatalı Giriş Yaptınız.\033"
        ana_menu
 	    ;;  		
	esac
 ;;
 2)
${CLEAR_PATH}
	${CLEAR_PATH}
    ${ECHO_PATH} -e "\033[33m########################\e${s}"
    ${ECHO_PATH} -e "\033[33m#                     ${s} \033[33m#\e${s}"
    ${ECHO_PATH} -e "\033[33m#      ${mavi} Sinusbot ${s}    \033[33m  #\e${s}"
    ${ECHO_PATH} -e "\033[33m#              ${s} \033[33m       #\e${s}"
    ${ECHO_PATH} -e "\033[33m########################\e${s}"	
    ${ECHO_PATH} -e "${mavii}1)\033${mavis}  Botları Başlat${s}" 
    ${ECHO_PATH} -e "${mavii}2)\033${mavis}  Botları Durdur${s}" 
    ${ECHO_PATH} -e "${mavii}3)\033${mavis}  Botları Sil${s}" 	
    ${ECHO_PATH} -e "${mavii}4)\033${mavis}  Botların Şifresini Sıfırla${s}" 
    ${ECHO_PATH} -e "${mavii}5)\033${mavis}  Youtube-DL Güncelle${s}" 
	${ECHO_PATH} -e "${mavii}6)\033${mavis}  Botları Yeniden Başlat${s}"
	${ECHO_PATH} -e "${mavii}7)\033${mavis}  Botları Güncelle${s}"
	${ECHO_PATH} -e "${mavis}0) \033${mavii}Ana Menüye Dön${s}\033[32m\033[0m" 
	${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
    read botayar
    case $botayar in
         1)
		 ${CLEAR_PATH}
rm -rf /tmp/$bot_path-start.txt
touch /tmp/$bot_path-start.txt
${ECHO_PATH} -e -n "\e[1;36mPort(ları) Girin (Çıkış için 0'ı tuşla)\e[0m: "
read -a arr22
case $arr22 in
  0)
  ana_menu
  exit
  ;;
esac
for elem22 in ${arr22[@]}
do 
${ECHO_PATH} $elem22 >> /tmp/$bot_path-start.txt
done 

while read -r line2
do
    name2="$line2"
    name2="$line2"
if [ -d "/opt/aurorax/ts3soundboard$name2" ]
then
>/dev/null 2>&1 </dev/tcp/$ip/$name2
if [ "$?" -ne 0 ]; then
${CD_PATH} /opt/aurorax/ts3soundboard$name2
rm -f /tmp/.sinusbot.lock.
rm -f /tmp/.sinusbot.lock
rm -f /tmp/.X11-unix/X40
sudo -u aurorax screen -AmdS ts3soundboard$name2 ./sinusbot
${ECHO_PATH} -e "\033[1;37m(\033[1;34m$name2\033[1;37m) portu başlatıldı.\033[0m"
else
${ECHO_PATH} -e "\033[1;37m(\033[1;34m$name2\033[1;37m) portu zaten başlatılmış gözüküyor, atlatıldı.\033[0m"
fi
else
${ECHO_PATH} -e "\033[1;37m(\033[1;34m$name2\033[1;37m) portu kurulu değil.\033[0m"
fi	
done < "/tmp/$bot_path-start.txt"
rm -rf /tmp/$bot_path-start.txt
sleep 1
${ECHO_PATH} -e "\033[0;32mAna menüye dönmek için enter'a basın\033[0m"
read enterbom
case $enterbom in
  *)
  ana_menu
  ;;
esac 
		 ;;
	     2) 
		 ${CLEAR_PATH}
rm -rf /tmp/$bot_path-stop.txt
touch /tmp/$bot_path-stop.txt
${ECHO_PATH} -e -n "\e[1;36mPort(ları) Girin (Çıkış için 0'ı tuşla)\e[0m: "
read -a arr23
case $arr23 in
  0)
  ana_menu
  exit
  ;;
esac
for elem23 in ${arr23[@]}
do 
${ECHO_PATH} $elem23 >> /tmp/$bot_path-stop.txt
done 

while read -r line3
do
    name3="$line3"
if [ -d "/opt/aurorax/ts3soundboard$name3" ]
then
>/dev/null 2>&1 </dev/tcp/$ip/$name3
if [ "$?" -ne 0 ]; then
${CD_PATH} /opt/aurorax/ts3soundboard$name3
${ECHO_PATH} -e "\033[1;37m(\033[1;34m$name3\033[1;37m) portu zaten durdurulmuş gözüküyor, atlatıldı.\033[0m"
else
sudo -u aurorax screen -S ts3soundboard$name3 -X quit
${ECHO_PATH} -e "\033[1;37m(\033[1;34m$name3\033[1;37m) portu durduruldu.\033[0m"
fi
else
${ECHO_PATH} -e "\033[1;37m(\033[1;34m$name3\033[1;37m) portu kurulu değil.\033[0m"
fi	
done < "/tmp/$bot_path-stop.txt"
rm -rf /tmp/$bot_path-stop.txt
sleep 1
${ECHO_PATH} -e "\033[0;32mAna menüye dönmek için enter'a basın\033[0m"
read enterbom
case $enterbom in
  *)
  ana_menu
  ;;
esac 
		 ;;
	     3)
		 ${CLEAR_PATH}
rm -rf /tmp/$bot_path-remove.txt
touch /tmp/$bot_path-remove.txt
${ECHO_PATH} -e -n "\e[1;36mPort(ları) Girin (Çıkış için 0'ı tuşla)\e[0m: "
read -a arr27
case $arr27 in
  0)
  ana_menu
  exit
  ;;
esac
for elem27 in ${arr27[@]}
do 
${ECHO_PATH} $elem27 >> /tmp/$bot_path-remove.txt
done 
while read -r line7
do
    name7="$line7"

if [ -d "/opt/aurorax/ts3soundboard$name7" ]
then
${CD_PATH} /opt/aurorax
sudo -u aurorax screen -S ts3soundboard$name7 -X quit
rm -rf ts3soundboard$name7
${ECHO_PATH} -e "\033[1;37m(\033[1;34m$name7\033[1;37m) portu silindi\033[0m"
else
${ECHO_PATH} -e "\033[1;37m(\033[1;34m$name7\033[1;37m) portu zaten kurulu değil.\033[0m"
fi	
done < "/tmp/$bot_path-remove.txt"
rm -rf /tmp/$bot_path-remove.txt
sleep 1
${ECHO_PATH} -e "\033[0;32mAna menüye dönmek için enter'a basın\033[0m"
read enterbom
case $enterbom in
  *)
  ana_menu
  ;;
esac 
		 ;;
	     4)
	     ${CLEAR_PATH}
rm -rf /tmp/$bot_path-sifresifirla.txt
touch /tmp/$bot_path-sifresifirla.txt
${ECHO_PATH} -e -n "\e[1;36mPort(ları) Girin (Çıkış için 0'ı tuşla)\e[0m: "
read -a arr25
case $arr25 in
  0)
  ana_menu
  exit
  ;;
esac
${ECHO_PATH} -e -n "\e[1;36mYeni Şifre:\e[0m: "
read yenisif
for elem25 in ${arr25[@]}
do 
${ECHO_PATH} $elem25 >> /tmp/$bot_path-sifresifirla.txt
done 

while read -r line5
do
    name5="$line5"
if [ -d "/opt/aurorax/ts3soundboard$name5" ]
then
${CD_PATH} /opt/aurorax/ts3soundboard$name5
sudo -u aurorax screen -S ts3soundboard$name5 -X quit
sleep 0.2
rm -f /tmp/.sinusbot.lock.
rm -f /tmp/.sinusbot.lock
rm -f /tmp/.X11-unix/X40
sudo -u aurorax screen -AmdS ts3soundboard$name5 ./sinusbot --override-password=$yenisif
${ECHO_PATH} -e "\033[1;37m(\033[1;34m$name5\033[1;37m) portunun şifresi sıfırlandı ~ $yenisif\033[0m"
else
${ECHO_PATH} -e "\033[1;37m(\033[1;34m$name5\033[1;37m) portu kurulu değil.\033[0m"
fi	
done < "/tmp/$bot_path-sifresifirla.txt"
rm -rf /tmp/$bot_path-sifresifirla.txt
sleep 1
${ECHO_PATH} -e "\033[0;32mAna menüye dönmek için enter'a basın\033[0m"
read enterbom
case $enterbom in
  *)
  ana_menu
  ;;
esac 
;;
5)
${CLEAR_PATH}
rm -rf /usr/local/bin/youtube-dl
${CD_PATH} /usr/local/bin
sudo ${CURL_PATH} -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
${APT_PATH} $install_path python -y 
${ECHO_PATH} -e "\033[1;35 Youtube-DL Güncellendi, botları yeniden başlatın.\033[0m" 
sleep 1
${ECHO_PATH} -e "\033[0;32mAna menüye dönmek için enter'a basın\033[0m"
read enterbom
case $enterbom in
  *)
  ana_menu
  ;;
esac 
;;
6)
${CLEAR_PATH}
rm -rf /tmp/$bot_path-restart.txt
touch /tmp/$bot_path-restart.txt
${ECHO_PATH} -e -n "\e[1;36mPort(ları) Girin (Çıkış için 0'ı tuşla)\e[0m: "
read -a arr24
case $arr24 in
  0)
  ana_menu
  exit
  ;;
esac
for elem24 in ${arr24[@]}
do 
${ECHO_PATH} $elem24 >> /tmp/$bot_path-restart.txt
done 

while read -r line4
do
    name4="$line4"
if [ -d "/opt/aurorax/ts3soundboard$name4" ]
then
>/dev/null 2>&1 </dev/tcp/$ip/$name4
${CD_PATH} /opt/aurorax/ts3soundboard$name4
sudo -u aurorax screen -S ts3soundboard$name4 -X quit
sleep 0.2
rm -f /tmp/.sinusbot.lock.
rm -f /tmp/.sinusbot.lock
rm -f /tmp/.X11-unix/X40
sudo -u aurorax screen -AmdS ts3soundboard$name4 ./sinusbot
${ECHO_PATH} -e "\033[1;37m(\033[1;34m$name4\033[1;37m) portu yeniden başlatıldı\033[0m"
else
${ECHO_PATH} -e "\033[1;37m(\033[1;34m$name4\033[1;37m) portu kurulu değil.\033[0m"
fi	
done < "/tmp/$bot_path-restart.txt"
rm -rf /tmp/$bot_path-restart.txt
sleep 1
${ECHO_PATH} -e "\033[0;32mAna menüye dönmek için enter'a basın\033[0m"
read enterbom
case $enterbom in
  *)
  ana_menu
  ;;
esac 
;;
7)
rm -rf /tmp/$bot_path-update.txt
touch /tmp/$bot_path-update.txt
${CD_PATH} /usr/local/bin
rm -rf sinusbot.current.tar.bz2
wget -q https://www.sinusbot.com/dl/sinusbot.current.tar.bz2 --no-check-certificate >/dev/null 2>&1
${CD_PATH} /opt
${ECHO_PATH} -e -n "\e[1;36mPort(ları) Girin (Çıkış için 0'ı tuşla)\e[0m: "
read -a arr26
case $arr26 in
  0)
  ana_menu
  exit
  ;;
esac
for elem26 in ${arr26[@]}
do 
${ECHO_PATH} $elem26 >> /tmp/$bot_path-update.txt
done 
while read -r line6
do
    name6="$line6"

if [ -d "/opt/aurorax/ts3soundboard$name6" ]
then
${CD_PATH} /opt/aurorax/ts3soundboard$name6
sudo -u sblinux screen -S ts3soundboard$name6 -X quit
cp /usr/local/bin/sinusbot.current.tar.bz2 /opt/aurorax/ts3soundboard$name6
tar -xjf sinusbot.current.tar.bz2 >/dev/null 2>&1
rm -rf sinusbot.current.tar.bz2
sleep 0.3
rm -f /tmp/.sinusbot.lock.
rm -f /tmp/.sinusbot.lock
rm -f /tmp/.X11-unix/X40
sudo -u aurorax screen -AmdS ts3soundboard$name6 ./sinusbot
${ECHO_PATH} -e "\033[1;37m(\033[1;34m$name6\033[1;37m) portu güncellendi\033[0m"
else
${ECHO_PATH} -e "\033[1;37m(\033[1;34m$name6\033[1;37m) portu kurulu değil.\033[0m"
fi	
done < "/tmp/$bot_path-update.txt"
rm -rf /tmp/$bot_path-update.txt
rm -rf /usr/local/bin/sinusbot.current.tar.bz2
sleep 1
${ECHO_PATH} -e "\033[0;32mAna menüye dönmek için enter'a basın\033[0m"
read enterbom
case $enterbom in
  *)
  ana_menu
  ;;
esac 
esac
 ;;
3)
	${CLEAR_PATH}
${ECHO_PATH} -e "\033[33m########################\e${s}"
     ${ECHO_PATH} -e "\033[33m#                     ${s} \033[33m#\e${s}"
     ${ECHO_PATH} -e "\033[33m#   ${mavis} JTS3ServerMod ${s}\033[33m    #\e${s}"
     ${ECHO_PATH} -e "\033[33m#              ${s} \033[33m       #\e${s}"
     ${ECHO_PATH} -e "\033[33m########################\e${s}"
     ${ECHO_PATH} -e "${mavii}1) JTS3ServerMod \033[33mBaşlat\e[0m" 
     ${ECHO_PATH} -e "${mavii}2) JTS3ServerMod \033[33mDurdur\e[0m"
     ${ECHO_PATH} -e "${mavii}3) JTS3ServerMod \033[33mDurumu\e[0m"
	 ${ECHO_PATH} -e "${mavii}4) JTS3ServerMod \033[33mKaldır\e[0m"
	 ${ECHO_PATH} -e "${mavis}0) \033${mavii}Ana Menüye Dön${s}\033[32m\033[0m" 
	 ${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
     read jts3yonet
     case $jts3yonet in
	      1)
		  ${CLEAR_PATH}
		   ${ECHO_PATH} -e -n "${mavii}Port:"
            read porty
           ${CLEAR_PATH}
		   ${ECHO_PATH} -e "\033[1;33m###############################################################" 
           ${ECHO_PATH} -e "\033[1;33m               \033[36mJTS3ServerMod Başlatılıyor.                 \033[33m"
           ${ECHO_PATH} -e "\033[1;33m###############################################################${s}"
		   $sleep_path 1
		   ${CD_PATH} $jts_path$porty
           su -c "./$baslat_path start"
		   ${CD_PATH} /root
		   $sleep_path 2
           ${CLEAR_PATH}
		   ${ECHO_PATH} -e "\033[1;33m###############################################################${s}" 
           ${ECHO_PATH} -e "\033[1;33m               \033[36mJTS3ServerMod Başlatıldı.                \033[33m"
           ${ECHO_PATH} -e "\033[1;33m###############################################################${s}"
		;;   
		  2)
		   ${CLEAR_PATH}
		   ${ECHO_PATH} -e -n "${mavii}Port:"
            read porty
           ${CLEAR_PATH}
		   ${ECHO_PATH} -e "\033[1;33m###############################################################${s}" 
           ${ECHO_PATH} -e "\033[1;33m               \033[36mJTS3ServerMod Durduruluyor.                 \033[33m"
           ${ECHO_PATH} -e "\033[1;33m###############################################################${s}"
		   $sleep_path 1
		   ${CD_PATH} $jts_path$porty
           su -c "./$baslat_path stop"
		   ${CD_PATH} /root
		   $sleep_path 2
           ${CLEAR_PATH}
		   ${ECHO_PATH} -e "\033[1;33m###############################################################${s}" 
           ${ECHO_PATH} -e "\033[1;33m               \033[36mJTS3ServerMod Durduruldu.                 \033[33m"
           ${ECHO_PATH} -e "\033[1;33m###############################################################${s}"
		  ;; 
		  3) 
		   ${CLEAR_PATH}
		   ${ECHO_PATH} -e -n "${mavii}Port:"
            read porty
           ${CLEAR_PATH}
		   ${ECHO_PATH} -e "\033[1;33m###############################################################${s}" 
           ${ECHO_PATH} -e "\033[1;33m               \033[36mJTS3ServerMod Durumu.                 \033[33m"
           ${ECHO_PATH} -e "\033[1;33m###############################################################${s}"
		   $sleep_path 1
		   ${ECHO_PATH} -e "\033[1;32m" 
		   ${CD_PATH} $jts_path$porty
           su -c "./$baslat_path status"
		   $sleep_path 2
           ${CLEAR_PATH}
		   ${CD_PATH} /root
           
	    ;;
	     4) 
         ${CLEAR_PATH}
		   ${ECHO_PATH} -e -n "${mavii}Port:"
            read porty
           ${CLEAR_PATH}
		 ${ECHO_PATH} -e "\033[1;33m#######################################################" 
         ${ECHO_PATH} -e "\033[1;33m               \033[36mJTS3ServerMod Kaldırılıyor                   \033[33m" 
         ${ECHO_PATH} -e "\033[1;33m#######################################################${s}" 
         ${CD_PATH} $jts_path$porty
         su -c "./$baslat_path stop"
         ${CD_PATH} /root
         rm -r ${CD_PATH} $jts_path$porty
		 $sleep_path 2
         ${CLEAR_PATH}
		 ${ECHO_PATH} -e "\033[1;33m#######################################################" 
         ${ECHO_PATH} -e "\033[1;33m               \033[36mJTS3ServerMod Başarıyla Kaldırıldı                   \033[33m" 
         ${ECHO_PATH} -e "\033[1;33m#######################################################${s}" 
         ;;
		 0)
		 ana_menu
		;; 
        *) 
	    ${CLEAR_PATH}
   	${ECHO_PATH} -e "\033[1;33m###################################################################\033[1;32m \033[0m"
	${ECHO_PATH} -e "\033[1;33m#          Yanlış Tuşlama Yapıldı! Script Kapatılıyor..           #\033[1;32m \033[0m"
	${ECHO_PATH} -e "\033[1;33m#                Script Tekrar Başlatılıyor                       #\033[1;33m \033[0m"
	${ECHO_PATH} -e "\033[1;33m###################################################################\033[1;32m \033[0m"
control
 	    ;;  		
	esac
 ;;
 4)
	${CLEAR_PATH}
${ECHO_PATH} -e "\033[33m########################\e${s}"
     ${ECHO_PATH} -e "\033[33m#                     ${s} \033[33m#\e${s}"
     ${ECHO_PATH} -e "\033[33m#   ${mavis}     CSGO    ${s}\033[33m      #\e${s}"
     ${ECHO_PATH} -e "\033[33m#              ${s} \033[33m       #\e${s}"
     ${ECHO_PATH} -e "\033[33m########################\e${s}"
${ECHO_PATH} -e "\033[31mEklentileri Kurmadan Admin Ekleme Çalışmayacaktır.\033[33m\e[0m" 1>&2
     ${ECHO_PATH} -e "${mavis}1)\033[33mBaşlat${s}\e[0m" 
     ${ECHO_PATH} -e "${mavis}2)\033[33mDurdur${s}\e[0m"
	 ${ECHO_PATH} -e "${mavis}3)\033[33mKaldır${s}\e[0m"
     ${ECHO_PATH} -e "${mavis}4)\033[33mEklentileri Kur (Sourcemod ve Metamod)${s}\e[0m"
	 ${ECHO_PATH} -e "${mavis}5)\033[33mAdmin Ekle (STEAM İD GEREKİR)${s}\033[0m"
     ${ECHO_PATH} -e "${mavis}6)\033[33mRcon Şifre Değiştir (Şuanki Şifre Gerekli)${s}\033[0m"  
	 ${ECHO_PATH} -e "${mavis}7)\033[33mEklentileri Sil${s}\033[0m" 
	 ${ECHO_PATH} -e "${mavis}0)\033${mavii}Ana Menüye Dön${s}\033[32m\033[0m"
	 ${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
     read gameall
     case $gameall in
	 1)
	 if [ ! -d "/home/csgoserver" ] 
     then
	 ${CLEAR_PATH}
	 ${ECHO_PATH} -e "\033[31mCSGO Sunucusu Kurulu Değil.\033[33m\e[0m" 1>&2
	 exit 
	 fi
	 ${CLEAR_PATH}
	 ${CD_PATH} /home/csgoserver/csgo_server/
	 ./baslat.sh start
	 ${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mCSGO Sunucunuz Başlatıldı.\033[0m"
	 ;;
	 2)
	 	 if [ ! -d "/home/csgoserver" ] 
     then
	 ${CLEAR_PATH}
	 ${ECHO_PATH} -e "\033[31mCSGO Sunucusu Kurulu Değil.\033[33m\e[0m" 1>&2
	 exit 
	 fi
	 ${CLEAR_PATH}
	 ${CD_PATH} /home/csgoserver/csgo_server/
	 ./baslat.sh stop
	 ${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mCSGO Sunucunuz Durduruldu.\033[0m"
	 ;;
	 3)
	 	 if [ ! -d "/home/csgoserver" ] 
     then
	 ${CLEAR_PATH}
	 ${ECHO_PATH} -e "\033[31mCSGO Sunucusu Kurulu Değil.\033[33m\e[0m" 1>&2
	 exit 
	 fi
	 ${CLEAR_PATH}
	 ${CD_PATH} /home/csgoserver/csgo_server/
	 ./baslat.sh stop
	 rm -r /home/csgoserver
	 ${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mCSGO Sunucunuz Kaldırıldı.\033[0m"
	 ;;
	 4)
	 	 if [ ! -d "/home/csgoserver" ] 
     then
	 ${CLEAR_PATH}
	 ${ECHO_PATH} -e "\033[31mCSGO Sunucusu Kurulu Değil.\033[33m\e[0m" 1>&2
	 exit 
	 fi
	 ${CLEAR_PATH}
	 ${CD_PATH} /home/csgoserver/csgo_server/csgo/
	 ${WGET_PATH} -q https://mms.alliedmods.net/mmsdrop/1.10/mmsource-1.10.7-git966-linux.tar.gz
	 ${WGET_PATH} -q https://sm.alliedmods.net/smdrop/1.9/sourcemod-1.9.0-git6261-linux.tar.gz
	 tar -xzf sourcemod-1.9.0-git6261-linux.tar.gz
	 tar -xzf mmsource-1.10.7-git966-linux.tar.gz
	 ${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mSourceMod Ve Metamod Kurulumu Tamamlandı.\033[0m"
	 ;;
	 5)
	 	 if [ ! -d "/home/csgoserver" ] 
     then
	 ${CLEAR_PATH}
	 ${ECHO_PATH} -e "\033[31mCSGO Sunucusu Kurulu Değil.\033[33m\e[0m" 1>&2
	 exit 
	 fi
	 ${CLEAR_PATH}
	 ${ECHO_PATH} -e -n "\033[1;33mYetki Vermek İsediğiniz Steam id:\033[0m"
	 read ids
	${ECHO_PATH} -e -n "\033[1;33mOyun İçi İsim:\033[0m"
	 read name
	 ${CD_PATH} /home/csgoserver/csgo_server/csgo/addons/sourcemod/configs
	 sed -i '1i"$ids"		"abc"' admin_simple.ini
	 sed -i '1i"$name" "abc" "auroraxadminekletest2344" ' admin_simple.ini
	 sed -i '1i"!127.0.0.1" "99:z"' admin_simple.ini
	 ;;
	 6)
	 ${ECHO_PATH} -e -n "\033[1;33mEski Rcon Şifreniz:\033[0m"
	 read ercon
	 ${ECHO_PATH} -e -n "\033[1;33mYeni Rcon Şifreniz:\033[0m"
	 read yrcon
	 ${CD_PATH} /home/csgoserver/csgo_server/csgo/cfg
     sed -i "s/$ercon/$yrcon/" server.cfg
	 ${CD_PATH} /home/csgoserver/csgo_server/
	 ./baslat.sh restart
	 ${ECHO_PATH} -e "\033[31mRcon Şifreniz Değiştirildi Yeni Rcon Şifreniz ~ $yrcon\033[33m\e[0m" 1>&2
	 ;;
	 7)
	 ${CD_PATH} /home/csgoserver/csgo_server/addons
	 rm -r metamod
	 rm -r sourcemod
	 rm -r metamod.vdf
	 ${CD_PATH} /home/csgoserver/csgo_server/addons/cfg
	 rm -r sourcemod
	 ./baslat.sh restart
	 ${ECHO_PATH} -e "\033[31mEklentiler Kaldırıldı.\033[33m\e[0m" 1>&2
	 ;;
        *) 
	    ${CLEAR_PATH}
   	${ECHO_PATH} -e "\033[1;33m###################################################################\033[1;32m \033[0m"
	${ECHO_PATH} -e "\033[1;33m#          Yanlış Tuşlama Yapıldı! Script Kapatılıyor..           #\033[1;32m \033[0m"
	${ECHO_PATH} -e "\033[1;33m#                Script Tekrar Başlatılıyor                       #\033[1;33m \033[0m"
	${ECHO_PATH} -e "\033[1;33m###################################################################\033[1;32m \033[0m"
ana_menu 
;;
0) 
ana_menu

 	    ;;  		
	esac
;;
5)
 	 if [ ! -d "/root/minecraft-server" ] 
     then
	 ${CLEAR_PATH}
	 ${ECHO_PATH} -e "\033[31mMinecraft Sunucusu Kurulu Değil.\033[33m\e[0m" 1>&2
	 exit 
	 fi
 ${CLEAR_PATH}
      ${ECHO_PATH} -e "\033[33m########################\e${s}"
     ${ECHO_PATH} -e "\033[33m#                     ${s} \033[33m#\e${s}"
     ${ECHO_PATH} -e "\033[33m#      ${mavi} Minecraft  ${s}  \033[33m  #\e${s}"
     ${ECHO_PATH} -e "\033[33m#              ${s} \033[33m       #\e${s}"
     ${ECHO_PATH} -e "\033[33m########################\e${s}"
     ${ECHO_PATH} -e "${mavis}1) Sunucuyu \033[33mBaşlat\e[0m" 
     ${ECHO_PATH} -e "${mavis}2) Sunucuyu \033[33mDurdur\e[0m"
	 ${ECHO_PATH} -e "${mavis}3) Sunucuyu \033[33mYeniden Başlat\e[0m"
	 ${ECHO_PATH} -e "${mavis}4) Sunucuyu \033[33mSil\e[0m"
	 ${ECHO_PATH} -e "${mavis}5) Sunucunun \033[33mKonsolunu Aç\e[0m"
	 ${ECHO_PATH} -e "${mavis}6) Plugin Paketi Kur - \033[32m(Çok Yakında)${s}\e[0m"
	 ${ECHO_PATH} -e "${mavis}0) Ana Menüye Dön ${s}" 
	 ${ECHO_PATH} -n -e "\033[1;31mCevap :${s}" 
     read mcconfs
     case $mcconfs in
	       1)
		    if [ ! -d "/root/minecraft-server" ] 
            then
	        ${CLEAR_PATH}
	        ${ECHO_PATH} -e "\033[31mMinecraft Sunucusu Kurulu Değil.\033[33m\e[0m" 1>&2
	        exit 
	         fi
		   	 ${CLEAR_PATH}
			${CD_PATH} /root/minecraft-server
			./mc_baslat.sh start
			${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mMinecraft Sunucunuz Başlatıldı.\033[0m"
			;;
			2)
		    if [ ! -d "/root/minecraft-server" ] 
           then
	       ${CLEAR_PATH}
	       ${ECHO_PATH} -e "\033[31mMinecraft Sunucusu Kurulu Değil.\033[33m\e[0m" 1>&2
	       exit 
	        fi
			clear
            ${CD_PATH} /root/minecraft-server
			./mc_baslat.sh stop
			${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mMinecraft Sunucunuz durduruldu.\033[0m"
			;;
			3)
		 	if [ ! -d "/root/minecraft-server" ] 
           then
	       ${CLEAR_PATH}
	       ${ECHO_PATH} -e "\033[31mMinecraft Sunucusu Kurulu Değil.\033[33m\e[0m" 1>&2
	       exit 
	        fi
			clear
            ${CD_PATH} /root/minecraft-server
			./mc_baslat.sh stop
			./mc_baslat.sh start
			${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mMinecraft Sunucunuz Yeniden Başlatıldı.\033[0m"
			;;
			4)
            if [ ! -d "/root/minecraft-server" ] 
           then
	       ${CLEAR_PATH}
	       ${ECHO_PATH} -e "\033[31mMinecraft Sunucusu Kurulu Değil.\033[33m\e[0m" 1>&2
	       exit 
	        fi
			clear
            ${CD_PATH} /root/minecraft-server
			./mc_baslat.sh stop
			${CD_PATH} ..
			rm -r minecraft-server
			${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mMinecraft Sunucunuz Silindi.\033[0m"
			;;
			5)
			if [ ! -d "/root/minecraft-server" ] 
           then
	       ${CLEAR_PATH}
	       ${ECHO_PATH} -e "\033[31mMinecraft Sunucusu Kurulu Değil.\033[33m\e[0m" 1>&2
	       exit 
		   fi
			${CLEAR_PATH}
			${ECHO_PATH} -e "\033[31mKonsoldan Çıkmak İçin Ctrl a+r\033[33m\e[0m" 1>&2
			sleep 1
			screen -a -r mcserver
           ;;
		   6)
		   ${CLEAR_PATH}
    ${ECHO_PATH} -e "${mavii}Çok Yakında :)${s}"
${ECHO_PATH} -e "\033[0;32mAna menüye dönmek için enter'a basın"
read enterbom
case $enterbom in
  *)
  ana_menu
  ;;
  esac
		   ;;
		   0) 
            ana_menu
 	       ;;  		
           *) 
           ana_menu
 	       ;;  		
           esac
 ;;
 6)
  	 if [ ! -d "/root/teaspeak" ] 
     then
	 ${CLEAR_PATH}
	 ${ECHO_PATH} -e "\033[31mTeaSpeak Sunucusu Kurulu Değil.\033[33m\e[0m" 1>&2
	 exit 
	 fi
 clear
     ${ECHO_PATH} -e "\033[33m########################\e${s}"
     ${ECHO_PATH} -e "\033[33m#                     ${s} \033[33m#\e${s}"
     ${ECHO_PATH} -e "\033[33m#      ${mavi} Teaspeak ${s}  \033[33m    #\e${s}"
     ${ECHO_PATH} -e "\033[33m#              ${s} \033[33m       #\e${s}"
     ${ECHO_PATH} -e "\033[33m########################\e${s}"
     ${ECHO_PATH} -e "${mavis}1)\033[33mBaşlat\e[0m" 
     ${ECHO_PATH} -e "${mavis}2)\033[33mDurdur\e[0m"
     ${ECHO_PATH} -e "${mavis}3)\033[33mDurumu\e[0m"
	 ${ECHO_PATH} -e "${mavis}4)\033[33mKaldır\e[0m"
	 ${ECHO_PATH} -e "${mavis}0)\033${mavii}Ana Menüye Dön${s}\033[32m\033[0m"
	 ${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
     read teay
     case $teay in
	      1)
           clear
		   ${ECHO_PATH} -e "\033[33m###############################################################" 
           ${ECHO_PATH} -e "\033[1;33m               \033[1;31mTeaSpeak Server Başlatılıyor.                 \033[33m"
           ${ECHO_PATH} -e "\033[33m###############################################################${s}"
		   $sleep_path 1
       ${CD_PATH} /root/teaspeak
         su -c "./teastart.sh start"
           clear
		   ${ECHO_PATH} -e "\033[1;33m###############################################################${s}" 
           ${ECHO_PATH} -e "\033[1;33m               \033[1;31mTeaSpeak Server Başlatıldı.                \033[33m"
           ${ECHO_PATH} -e "\033[1;33m###############################################################${s}"
		   ;;   
		   2)
		   clear
		   ${ECHO_PATH} -e "\033[1;33m###############################################################${s}" 
           ${ECHO_PATH} -e "\033[1;33m               \033[1;31mTeaSpeak Server Durduruluyor.                 \033[33m"
           ${ECHO_PATH} -e "\033[1;33m###############################################################${s}"
		   $sleep_path 1
       ${CD_PATH} /root/teaspeak
         su -c "./teastart.sh stop"
           clear
		   ${ECHO_PATH} -e "\033[1;33m###############################################################${s}" 
           ${ECHO_PATH} -e "\033[1;33m               \033[1;31mTeaSpeak Server Durduruldu.                 \033[33m"
           ${ECHO_PATH} -e "\033[1;33m###############################################################${s}"
		   ;; 
		   3) 
		   clear
		   ${ECHO_PATH} -e "\033[1;33m###############################################################${s}" 
           ${ECHO_PATH} -e "\033[1;33m               \033[1;31mTeaSpeak Server Durumu.                 \033[33m"
           ${ECHO_PATH} -e "\033[1;33m###############################################################${s}"
		   $sleep_path 1
          ${CD_PATH} /root/teaspeak
         su -c "./teastart.sh status"
	       ;;
	       4) 
         clear
		 ${ECHO_PATH} -e "\033[1;33m#######################################################" 
         ${ECHO_PATH} -e "\033[1;33m               \033[1;31mTeaSpeak Kaldırılıyor                   \033[33m" 
         ${ECHO_PATH} -e "\033[1;33m#######################################################${s}" 
         ${CD_PATH} /root/teaspeak
         su -c "./teastart.sh stop"
         ${CD_PATH} /root
         rm -r teaspeak
         clear
		 ${ECHO_PATH} -e "\033[1;33m#######################################################" 
         ${ECHO_PATH} -e "\033[1;33m              \033[1;31mTeaSpeak Başarıyla Kaldırıldı                   \033[33m" 
         ${ECHO_PATH} -e "\033[1;33m#######################################################${s}" 
		;;
        0) 
		ana_menu
        ;;
        *) 
         clear 
         ${ECHO_PATH} -e "\033[36mHatalı Giriş Yaptınız.\033"
        ana_menu
 	    ;;  		
	esac
 ;;
 7)
   	 if [ ! -d "/root/multitheftauto_linux_x64" ] 
     then
	 ${CLEAR_PATH}
	 ${ECHO_PATH} -e "\033[31mMta Sunucusu Kurulu Değil.\033[33m\e[0m" 1>&2
	 exit 
	 fi
 ${CLEAR_PATH}
${ECHO_PATH} -e "\033[33m############################################\e${s}"
     ${ECHO_PATH} -e "\033[33m#                                         ${s} \033[33m#\e${s}"
     ${ECHO_PATH} -e "\033[33m#      ${mavi}Multi Theft Auto Server Ayarları ${s}  \033[33m #\e${s}"
     ${ECHO_PATH} -e "\033[33m#                                         ${s} \033[33m#\e${s}"
     ${ECHO_PATH} -e "\033[33m############################################\e${s}"
     ${ECHO_PATH} -e "${mavis}1) \033${mavii}\033[33mBaşlat\e[0m" 
     ${ECHO_PATH} -e "${mavis}2) \033${mavii}\033[33mDurdur\e[0m"
	 ${ECHO_PATH} -e "${mavis}3) \033${mavii}\033[33mKaldır\e[0m"
	 ${ECHO_PATH} -e "${mavis}4) \033${mavii}\033[33mSunucuyu Yeniden Başlat\e[0m"
	 ${ECHO_PATH} -e "${mavis}5) \033${mavii}\033[33mAdminlik Yaz (Bu Özellik 1 Kereye Mahsustur.)\e[0m"
	 ${ECHO_PATH} -e "${mavis}6) \033${mavii}\033[33mSunucu Adını Değiştir\e[0m"
	 ${ECHO_PATH} -e "${mavis}0)\033${mavii}Ana Menüye Dön${s}\033[32m\033[0m"
	 ${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
	 read confs
	 case $confs in
	      1)
           ${CLEAR_PATH}
		   if [ ! -d "/root/multitheftauto_linux_x64" ] 
           then
	       ${ECHO_PATH} -e "\033[31mMta Sunucusu Kurulu Değil\033[33m\e[0m" 1>&2
	       exit 
	        fi
		   ${CD_PATH} /root/multitheftauto_linux_x64
           su root -c "screen -dmS mtaserver ./mta-server64"
           ${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mMta Sunucunuz Başlatıldı.\033[0m"
		   ;;   
	       2)
		   ${CLEAR_PATH}
		   if [ ! -d "/root/multitheftauto_linux_x64" ] 
           then
	       ${ECHO_PATH} -e "\033[31mMta Sunucusu Kurulu Değil\033[33m\e[0m" 1>&2
	       exit 
	        fi
		   ${CD_PATH} /root/multitheftauto_linux_x64
           su root -c "screen -S mtaserver -X quit"
           ${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mMta Sunucunuz Durduruldu.\033[0m"
		   ;; 
	       3) 
        		   ${CLEAR_PATH}
		   if [ ! -d "/root/multitheftauto_linux_x64" ] 
           then
	       ${ECHO_PATH} -e "\033[31mMta Sunucusu Kurulu Değil\033[33m\e[0m" 1>&2
	       exit 
	        fi
		   ${CD_PATH} /root/multitheftauto_linux_x64
           su root -c "screen -S mtaserver -X quit"
		   rm -r multitheftauto_linux_x64
           ${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mMta Sunucunuz Kaldırıldı.\033[0m"
		  ;;
	      4) 
                		   ${CLEAR_PATH}
		   if [ ! -d "/root/multitheftauto_linux_x64" ] 
           then
	       ${ECHO_PATH} -e "\033[31mMta Sunucusu Kurulu Değil\033[33m\e[0m" 1>&2
	       exit 
	        fi
		   ${CD_PATH} /root/multitheftauto_linux_x64
           su root -c "screen -S mtaserver -X quit"
		   su root -c "screen -dmS mtaserver ./mta-server64"
           ${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mMta Sunucunuz Yeniden Başlatıldı.\033[0m"
		  ;;
	      5) 
         ${CLEAR_PATH}
         ${ECHO_PATH} -e -n "\033[1;31mKullanıcı Adı:\033[0m"
	  	 read mtanames
		 su root -c "screen -S mtaserver -X quit"
		 sleep 0.1
		 read sname
		 ${CD_PATH} /root/multitheftauto_linux_x64/mods/deathmatch/
	      sed -i "s/user.name/user.$sname/" acl.xml
         ${CD_PATH} /root
         ${CLEAR_PATH}
         ${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mAdminlik Şu Kullanıcı Adına Yazılmıştır ~ $mtanames.\033[0m"
		 ${CD_PATH} /root/multitheftauto_linux_x64
		 su root -c "screen -dmS mtaserver ./mta-server64"
		 ;;
	     6) 
		 ${CLEAR_PATH}
		 su root -c "screen -S mtaserver -X quit"
		 ${ECHO_PATH} -e -n "\033[1;31mSunucu Adı:\033[0m"
		 read mtasern
         sed -i "s/Default MTA Server/$sname/" /root/multitheftauto_linux_x64/mods/deathmatch/mtaserver.conf
         ${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mSunucu Adınız Değiştirilmiştir ~ $mtasern.\033[0m"
		 ${CD_PATH} /root/multitheftauto_linux_x64
         su root -c "screen -dmS mtaserver ./mta-server64"
         ${CD_PATH} /root
         ${CLEAR_PATH}
		 ;;
         0)
         ana_menu
         ;;
         *)  
        control		 
 	    ;;  		
	  esac
 ;;
 8)
 ${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mUzak Masaüstünü Silmek İsediğinize Eminmisiniz ? (Evet/Hayır)\033[0m"
read -p $'\e[1;36mCevap\e[0m: ' xrdps
if [ "$xrdp" = "Evet" ];then
${CLEAR_PATH}
sudo ${APT_PATH} remove --auto-remove xrdp
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mUzak Masaüstü(xrdp) Silindi.\033[0m"
elif [ "$xrdps" = "evet" ];then
${CLEAR_PATH}
sudo ${APT_PATH} remove --auto-remove xrdp
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mUzak Masaüstü(xrdp) Silindi.\033[0m"
elif [ "$xrdps" = "Hayır" ];then
ana_menu
elif [ "$xrdps" = "hayır" ];then
ana_menu
fi
 ;;
#Menu Son
0) 
ana_menu
;;
*) 
 clear 
    ${ECHO_PATH} -e "\033[1;33m###################################################################\033[1;32m \033[0m"
	${ECHO_PATH} -e "\033[1;33m#          Yanlış Tuşlama Yapıldı! Script Kapatılıyor..           #\033[1;32m \033[0m"
	${ECHO_PATH} -e "\033[1;33m#                Script Tekrar Başlatılıyor                       #\033[1;33m \033[0m"
	${ECHO_PATH} -e "\033[1;33m###################################################################\033[1;32m \033[0m"
ana_menu

 	    ;;  		

esac
}

if [ "$(id -u)" != "0" ]; then
   ${ECHO_PATH} -e "\033[33m# \033[31mRoot Diğilsiniz Scriptin Çalışması için Root Yetkisine Sahip Olmalsınız\033[33m#\e[0m" 1>&2
   exit 1
fi
control
