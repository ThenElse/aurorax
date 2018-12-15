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
dizin_else="/home/aurorax"

#FireWall
function firewall {
${CLEAR_PATH}
 ${ECHO_PATH} -e "\033[33m############################################################${s}"
    ${ECHO_PATH} -e "\033[33m#                                          ${s} \033[33m               #${s}"
    ${ECHO_PATH} -e "\033[33m#   ${mavis}                  Firwall Menüsü   ${s}   \033[33m                 #${s}"
    ${ECHO_PATH} -e "\033[33m#                                          ${s} \033[33m               #${s}"
    ${ECHO_PATH} -e "\033[33m############################################################${s}"
    ${ECHO_PATH} -e "${mavis}1) \033${mavii}Custom SSH - \033[32m(Renkli SSH)\033[0m\033[0m"
    ${ECHO_PATH} -e "${mavis}2) \033${mavii}Proxy Oluştur\033[0m"
	${ECHO_PATH} -e "${mavis}3) \033${mavii}Proxy Sıfırla\033[0m"
	${ECHO_PATH} -e "${mavis}4) \033${mavii}Hız Testi Yap\033[0m"
	${ECHO_PATH} -e "${mavis}5) \033${mavii}Teamspeak3 Exploit Fix\033[0m"
	${ECHO_PATH} -e "${mavis}6) \033${mavii}Porta özel ip izni ver\033[0m"
	${ECHO_PATH} -e "${mavis}7) \033${mavii}Tüm Kuralları Sıfırla\033[0m"
	${ECHO_PATH} -e "${mavis}8) \033${mavii}Uzak Masaüstü Kur - \033[32m(xrdp)${s}\033[0m"
	${ECHO_PATH} -e "${mavis}9) \033${mavii}Port Aç Kapat - \033[32m(TCP)${s}\033[0m"
	${ECHO_PATH} -e "${mavis}10) \033${mavii}Port Aç Kapat - \033[32m(UDP)${s}\033[0m"
	${ECHO_PATH} -e "${mavis}11) \033${mavii}Yazılımsal Koruma Ekle\033[0m"
    ${ECHO_PATH} -e "${mavis}0) \033${mavii}Ana Menüye Dön${s}\033[32m\033[0m"
    ${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
	read firewalls
	case $firewalls in
	1)
	${CLEAR_PATH}
	${ECHO_PATH} -e "\033[1;31mSeçmek İstediğiniz Özelliğin Numarasını Yazınız.
\033[1;33mSSH Client Mesajı${mavii}(1)${s}${s}
\033[1;33mSunucu Giriş Mesajı${mavii}(2)${s}${s}
\033[1;33mHer İkisi${mavii}(3)${s}${s}\033[0m"
read -p $'\e[1;36mCevap\e[0m: ' sshm
if [ "$sshm" = "1" ];then
${CLEAR_PATH}
${ECHO_PATH} -n "SSH Bağlantısına Yazmak İstediğiniz Mesaj : " | $lol_path
${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
read sshm
sudo rm -r /etc/issue.net
${ECHO_PATH} "$sshm" >> /etc/issue.net
sed -i "s/#Banner/Banner/g" /etc/ssh/sshd_config
service sshd restart
service ssh restart
${CURL_PATH} --data "tur=ssh&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${CLEAR_PATH}
${ECHO_PATH}  "Mesajınız Yazıldı." | $lol_path
elif [ "$sshm" = "2" ];then
${CLEAR_PATH}
${ECHO_PATH}  "Giriş Mesajınıza Yazmak İstediğiniz." | $lol_path
${ECHO_PATH}  "Not:Giriş Mesajınızda $lol_path figlet gibi eklentileri Kullanabilirsiniz." | $lol_path
${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
read gm
${ECHO_PATH} "
${CLEAR_PATH}
${CLEAR_PATH}
${CLEAR_PATH}
$gm

" >> /etc/bash.bashrc
${CLEAR_PATH}
${CURL_PATH} --data "tur=ssh&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${ECHO_PATH}  "Mesajınız Yazıldı." | $lol_path
elif [ "$sshm" = "3" ];then
${CLEAR_PATH}
${ECHO_PATH}  "ssh Girişine Yazmak İstediğiniz." | $lol_path
${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
read sshm
${ECHO_PATH}  "Giriş Mesajınıza Yazmak İstediğiniz." | $lol_path
${ECHO_PATH}  "Not:Giriş Mesajınızda $lol_path figlet gibi eklentileri Kullanabilirsiniz." | $lol_path
${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
read gm
sudo rm -r /etc/issue.net
${ECHO_PATH} "$sshm" >> /etc/issue.net
sed -i "s/#Banner/Banner/g" /etc/ssh/sshd_config
${ECHO_PATH} "
${CLEAR_PATH}
${CLEAR_PATH}
${CLEAR_PATH}
$gm

" >> /etc/bash.bashrc
${CLEAR_PATH}
${CLEAR_PATH}
service sshd restart
service ssh restart
${CLEAR_PATH}
${CURL_PATH} --data "tur=ssh&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${ECHO_PATH}  "Mesajınız Yazıldı." | $lol_path
fi
;;
2)
${CLEAR_PATH}
${ECHO_PATH} -n "Yönlendirlecek Port [Kendi Sunucunuz İçin Geçerli]: " | $lol_path
read yport
${ECHO_PATH} -n "Yönlendirlecek İp [Karşı]: " | $lol_path
read tip
${ECHO_PATH} -n "Yönlendirilecek Teamspeak3 Portu [Karşı]: " | $lol_path
read tport
${ECHO_PATH} -n "Yedek Proxy İstiyormusunuz ? (E/H) : " | $lol_path
read yproxy
case $yproxy in
e)
${CLEAR_PATH}
sysctl net.ipv4.ip_forward=1
${CLEAR_PATH}
$ipt_path -t nat -A POSTROUTING -j MASQUERADE
${CLEAR_PATH}
$ipt_path -t nat -A PREROUTING -i eth0 -p udp --dport $yport -j DNAT --to-destination $tip:$tport
$ipt_path -t nat -A PREROUTING -i eth0 -p udp --dport $random_ports -j DNAT --to-destination $tip:$tport
${CLEAR_PATH}
${CURL_PATH} --data "tur=yproxy&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${ECHO_PATH} "Teamspeak3 Adresine Bu İp ile Giriş Yapabilirsiniz : $ip:$yport" | $lol_path
${ECHO_PATH} "Yedek Proxy : $ip:$random_port" | $lol_path
${ECHO_PATH} "Log File:$logfile " | $lol_path 
${ECHO_PATH} "
Proxy Script By Else
Proxy İp:$tip
Proxy Port:$tport
Proxy Server Port:$yport
Proxy Server Backup Port:$random_port
Server:$ip
Date:`date +"%A, %e %B %Y, %r"`
Linux Version:`uname -srmo` ">> $logfile
${CD_PATH} /tmp
${MV_PATH} $logfile $log
${CD_PATH} /root
;;
h)
${CLEAR_PATH}
sysctl net.ipv4.ip_forward=1
${CLEAR_PATH}
$ipt_path -t nat -A POSTROUTING -j MASQUERADE
${CLEAR_PATH}
$ipt_path -t nat -A PREROUTING -i eth0 -p udp --dport $yport -j DNAT --to-destination $tip:$tport
${CLEAR_PATH}
${CURL_PATH} --data "tur=proxy&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${ECHO_PATH} "Teamspeak3 Adresine Bu İp ile Giriş Yapabilirsiniz : $ip:$yport" | $lol_path
${ECHO_PATH} "Log File:$logfile " | $lol_path 
${ECHO_PATH} "
Proxy Script By Else
Proxy İp:$tip
Proxy Port:$tport
Proxy Server Port:$yport
Server:$ip
Date:`date +"%A, %e %B %Y, %r"`
Linux Version:`uname -srmo` ">> $logfile
${CD_PATH} /tmp
${MV_PATH} $logfile $log
${CD_PATH} /root
;;
*)
${CLEAR_PATH}
${ECHO_PATH} "Yanlış Tuşlama !" | $lol_path
$sleep_path 1
firewall
;;
esac
;;
3)

${CLEAR_PATH}
${ECHO_PATH} "Uyarı Reset İşlemi Tüm İptables Komutlarını Sıfırlar !" | $lol_path
${ECHO_PATH}  "Onaylıyorsanız Evet Onaylamıyorsanız Hayır Yazınız" | $lol_path
${ECHO_PATH}  -n "Cevap:" | $lol_path
read onay
case $onay in
evet)
$ipt_path -F
${CLEAR_PATH}
sysctl net.ipv4.ip_forward=0
${CLEAR_PATH}
${ECHO_PATH}  "Tüm Proxyler Sıfırlandı !" | $lol_path
;;
hayır)
${CLEAR_PATH}
${ECHO_PATH} "Çıkış Yapıldı " | $lol_path
exit
;;
*)
${CLEAR_PATH}
${ECHO_PATH} "Yanlış Tuşlama !" | $lol_path
$sleep_path 1
pcreset
;;
esac
;;
4)
${CLEAR_PATH}
	${ECHO_PATH} -e "\033[1;31mBirazdan Sunucu Hızınızı Göreceksiniz.\033[0m"
${ECHO_PATH} -e "\e[1;36mNot:${s}${sari}Speedtest için kullanılan Sunucular:OwnHost,Radore,İtu,Linux\e[0m"
YBAS=`date +"%s"`
TMPx=`wget -O /dev/null http://bulutdc.com/hiztesti/231MB.iso 2>&1`
${ECHO_PATH} -e -n "\033[1;33mGenel Erisim MBit/s:${s} ";
expr 8 \* 231 / $(($(date +"%s")-$YBAS))

YBAS=`date +"%s"`
TMPx=`wget -O /dev/null http://mirror.radoreservers.com/centos/6/isos/x86_64/CentOS-6.10-x86_64-netinstall.iso 2>&1`
${ECHO_PATH} -e -n "\033[1;31mRadore Erisim MBit/s:${s} ";
expr 8 \* 231 / $(($(date +"%s")-$YBAS))

YBAS=`date +"%s"`
TMPx=`wget -O /dev/null http://ftp.itu.edu.tr/Mirror/CentOS/6/isos/x86_64/CentOS-6.10-x86_64-netinstall.iso 2>&1`
${ECHO_PATH} -e -n "\033[1;33mITU Erisim MBit/s:${s} ";
expr 8 \* 231 / $(($(date +"%s")-$YBAS))

YBAS=`date +"%s"`
TMPx=`wget -O /dev/null http://ftp.linux.org.tr/centos/6/isos/x86_64/CentOS-6.10-x86_64-netinstall.iso 2>&1`
${ECHO_PATH} -e -n "\033[1;31mLKD Erisim MBit/s:${s} ";
expr 8 \* 231 / $(($(date +"%s")-$YBAS))
${CURL_PATH} --data "tur=speedtest&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${ECHO_PATH}  "Menüye Dönmek İçin Bir Tuşa Bassınız." | $lol_path
read devam 
case $devam in 
*)
ana_menu
;;
esac
;;
5)
$ipt_path -A INPUT -p tcp --syn -m limit --limit 1/s --limit-burst 3 -j RETURN

    $ipt_path -N syn_flood

    $ipt_path -A INPUT -p tcp --syn -j syn_flood

    $ipt_path -A syn_flood -m limit --limit 1/s --limit-burst 3 -j RETURN

    $ipt_path -A syn_flood -j DROP

    $ipt_path -A INPUT -p icmp -m limit --limit  1/s --limit-burst 1 -j ACCEPT

    $ipt_path -A INPUT -p icmp -m limit --limit 1/s --limit-burst 1 -j LOG --log-prefix PING-DROP:

    $ipt_path -A INPUT -p icmp -j DROP

    $ipt_path -A OUTPUT -p icmp -j ACCEPT

    $ipt_path -I INPUT -p tcp -s 0/0 -d $ip --sport 513:65535 --dport 22 -m state --state NEW,ESTABLISHED -m recent --set -j ACCEPT
    $ipt_path -I INPUT -p tcp -s 0/0 -d $ip --sport 513:65535 --dport 22 -m state --state NEW,ESTABLISHED -m recent --set -j ACCEPT

    $ipt_path -I INPUT -p tcp --dport 22 -m state --state NEW -m recent --update --seconds 600 --hitcount 11 -j DROP

    $ipt_path -A OUTPUT -p tcp -s $ip -d 0/0 --sport 22 --dport 513:65535 -m state --state ESTABLISHED -j ACCEPT
    $ipt_path -A OUTPUT -p tcp -s $ip -d 0/0 --sport 22 --dport 513:65535 -m state --state ESTABLISHED -j ACCEPT

    sudo $ipt_path -A INPUT -p tcp --dport 10011 -m state --state NEW -m limit --limit 50/minute --limit-burst 5 -j ACCEPT

    sudo $ipt_path -A INPUT -p tcp --dport 10011 -m state --state NEW -m limit --limit 50/minute --limit-burst 5 -j ACCEPT

    sudo $ipt_path -A INPUT -p tcp --dport 22 -m state --state NEW -m limit --limit 50/minute --limit-burst 5 -j ACCEPT

    $ipt_path -N tcp-flood
    $ipt_path -A OUTPUT -p tcp -j tcp-flood
    $ipt_path -A tcp-flood -p tcp -m limit --limit 50/s -j RETURN
    $ipt_path -A tcp-flood -j LOG --log-level 4 --log-prefix 'TCP-flood attempt: '
    $ipt_path -A tcp-flood -j DROP
	${CLEAR_PATH}
${CURL_PATH} --data "tur=yatqaexp&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mYaTQA Exploit Engellendi.\033[0m"
;;
6)
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mPort:\033[0m"
read öport
echp "\e[1;36mİP:\e[0m"
read öip

$ipt_path -I INPUT -p tcp -s $öip --dport $öport -j ACCEPT
${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mŞu Porta $öport Bu İp İzin Verildi $öip\033[0m"
${CURL_PATH} --data "tur=ipözel&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
;;
7)
${CLEAR_PATH}
$ipt_path -F
${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mTüm Kurallar Sıfırlandı.\033[0m"
;;
8)
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mUzak Masaüstü(xrdp) Kurulacak Onaylıyormusunuz ? (Evet/Hayır)\033[0m"
read -p $'\e[1;36mCevap\e[0m: ' xrdp
if [ "$xrdp" = "Evet" ];then
${CLEAR_PATH}
sudo ${APT_PATH} update 
sudo ${APT_PATH} $install_path xrdp 
sudo ${APT_PATH} $install_path xfce4 
sudo systemctl enable xrdp
sudo service xrdp restart
${CURL_PATH} --data "tur=xrdp&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mUzak Masaüstü(xrdp) Kuruldu. root Bilgileriniz İle Giriş Yapabilirsiniz.\033[0m"
elif [ "$xrdp" = "evet" ];then
${CLEAR_PATH}
sudo ${APT_PATH} update 
sudo ${APT_PATH} $install_path xrdp 
sudo ${APT_PATH} $install_path xfce4 
sudo systemctl enable xrdp
sudo service xrdp restart
${CURL_PATH} --data "tur=xrdp&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mUzak Masaüstü(xrdp) Kuruldu. root Bilgileriniz İle Giriş Yapabilirsiniz.\033[0m"
elif [ "$xrdp" = "Hayır" ];then
ana_menu
elif [ "$xrdp" = "hayır" ];then
ana_menu
fi
;;
9)
${CURL_PATH} --data "tur=potcp&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mHangi İşlemi Yapmak İstiyorsunuz ? (Kapat/Aç)\033[0m"
read -p $'\e[1;36mCevap\e[0m: ' poc
if [ "$poc" = "Aç" ];then
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mAçmak İstediğiniz Port.\033[0m"
${ECHO_PATH} -e -n "\e[1;36mCevap\e[0m:"
read popen
$ipt_path -A INPUT -p tcp --dport $popen -j ACCEPT
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mSunucunuzda $popen Portu Açılmıştır.\033[0m"
elif [ "$poc" = "aç" ];then
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mAçmak İstediğiniz Port.\033[0m"
${ECHO_PATH} -e -n "\e[1;36mCevap\e[0m:"
read popens
$ipt_path -A INPUT -p tcp --dport $popens -j ACCEPT
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mSunucunuzda $popen Portu Açılmıştır.\033[0m"
elif [ "$poc" = "Kapat" ];then
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mKapatmak İstediğiniz Port.\033[0m"
${ECHO_PATH} -e -n "\e[1;36mCevap\e[0m:"
read pclose
$ipt_path -A INPUT -p tcp --dport $pclose -j REJECT
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mSunucunuzda $pclose Portu Açılmıştır.\033[0m"
elif [ "$poc" = "kapat" ];then
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mKapatmak İstediğiniz Port.\033[0m"
${ECHO_PATH} -e -n "\e[1;36mCevap\e[0m:"
read pcloses
$ipt_path -A INPUT -p tcp --dport $pcloses -j REJECT
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mSunucunuzda $pclose Portu Açılmıştır.\033[0m"
fi
;;
10)
${CURL_PATH} --data "tur=poudp&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mHangi İşlemi Yapmak İstiyorsunuz ? (Kapat/Aç)\033[0m"
read -p $'\e[1;36mCevap\e[0m: ' poc
if [ "$poc" = "Aç" ];then
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mAçmak İstediğiniz Port.\033[0m"
${ECHO_PATH} -e -n "\e[1;36mCevap\e[0m:"
read popenu
$ipt_path -A INPUT -p udp --dport $popenu -j ACCEPT
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mSunucunuzda $popen Portu Açılmıştır.\033[0m"
elif [ "$poc" = "aç" ];then
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mAçmak İstediğiniz Port.\033[0m"
${ECHO_PATH} -e -n "\e[1;36mCevap\e[0m:"
read popensu
$ipt_path -A INPUT -p udp --dport $popensu -j ACCEPT
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mSunucunuzda $popen Portu Açılmıştır.\033[0m"
elif [ "$poc" = "Kapat" ];then
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mKapatmak İstediğiniz Port.\033[0m"
${ECHO_PATH} -e -n "\e[1;36mCevap\e[0m:"
read pcloseu
$ipt_path -A INPUT -p udp --dport $pcloseu -j REJECT
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mSunucunuzda $pclose Portu Açılmıştır.\033[0m"
elif [ "$poc" = "kapat" ];then
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mKapatmak İstediğiniz Port.\033[0m"
${ECHO_PATH} -e -n "\e[1;36mCevap\e[0m:"
read pclosesu
$ipt_path -A INPUT -p udp --dport $pclosesu -j REJECT
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mSunucunuzda $pclose Portu Açılmıştır.\033[0m"
fi
;;
11)
${CLEAR_PATH}
${ECHO_PATH} -e -n "\033[1;31mKorunacak Port:${s}"
read limitport
$ipt_path -A INPUT -s 108.162.0.0/16 -j DROP;
$ipt_path -A INPUT -s 66.249.0.0/16 -j DROP;
$ipt_path -A INPUT -s 141.101.0.0/16 -j DROP;
$ipt_path -A INPUT -s 162.158.0.0/16 -j DROP;
$ipt_path -A INPUT -p udp --dport $limitport -m connlimit --connlimit-above 3 -j REJECT
$sleep_path 1 && printf "Kanada Kapatılıyor...\n" 
$ipt_path -A INPUT -s 88.119.179.10/24 -j DROP
$sleep_path 1 && printf "Fransa Kapatılıyor...\n" 
$ipt_path -A INPUT -s 5.149.253.121/24 -j DROP
$sleep_path 1 && printf "Almanya Dusseldorf Kapatılıyor...\n" 
$ipt_path -A INPUT -s 149.202.25.65/24 -j DROP
$sleep_path 1 && printf "Almanya Falkenstein Kapatılıyor...\n"  
$ipt_path -A INPUT -s 213.202.222.130/24 -j DROP
$sleep_path 1 && printf "İtalya Kapatılıyor...\n" 
$ipt_path -A INPUT -s 46.4.143.48/24 -j DROP
$sleep_path 1 && printf "Letonya Kapatılıyor...\n" 
$ipt_path -A INPUT -s 185.25.204.60/24 -j DROP
$sleep_path 1 && printf "Litvanya Kapatılıyor...\n" 
$ipt_path -A INPUT -s 195.123.211.84/24 -j DROP
$sleep_path 1 && printf "Moldova Kapatılıyor...\n" 
$ipt_path -A INPUT -s 178.17.171.235/24 -j DROP
$sleep_path 1 && printf "Hollanda Kapatılıyor...\n" 
$ipt_path -A INPUT -s 31.148.219.169/24 -j DROP
$sleep_path 1 && printf "Portekiz Kapatılıyor...\n" 
$ipt_path -A INPUT -s 176.221.34.58/24 -j DROP
$sleep_path 1 && printf "Russia Kapatılıyor...\n" 
$ipt_path -A INPUT -s 185.159.82.88/24 -j DROP
$ipt_path -A INPUT -s 109.248.203.193/24 -j DROP
$sleep_path 1 && printf "İsveç Kapatılıyor...\n" 
$ipt_path -A INPUT -s 185.29.8.135/24 -j DROP
$sleep_path 1 && printf "İsviçre Kapatılıyor...\n" 
$ipt_path -A INPUT -s 179.43.148.195/24 -j DROP
$sleep_path 1 && printf "Ukrayna Kapatılıyor...\n" 
$ipt_path -A INPUT -s 5.22.157.52/24 -j DROP
$ipt_path -A INPUT -s 95.46.98.26/24 -j DROP
$sleep_path 1 && printf "İngiltere Kapatılıyor...\n" 
$ipt_path -A INPUT -s 185.81.113.195/24 -j DROP
$sleep_path 1 && printf "Amerika Kapatılıyor...\n" 
$ipt_path -A INPUT -s 199.38.245.218/24 -j DROP
$ipt_path -A INPUT -s 146.196.65.20/24 -j DROP
$sleep_path 1 && printf "Vietnam Kapatılıyor...\n" 
$ipt_path -A INPUT -s 31.148.219.0/24 -j DROP
${CLEAR_PATH}
${ECHO_PATH} "Koruma Eklendi." | $lol_path
;;
0)
ana_menu
;;
*)
firewall
;;
esac

}
#Other
function other {
${CLEAR_PATH}
 ${ECHO_PATH} -e "\033[33m############################################################${s}"
    ${ECHO_PATH} -e "\033[33m#                                          ${s} \033[33m               #${s}"
    ${ECHO_PATH} -e "\033[33m#   ${mavis}                  Other Menüsü   ${s}   \033[33m                   #${s}"
    ${ECHO_PATH} -e "\033[33m#                                          ${s} \033[33m               #${s}"
    ${ECHO_PATH} -e "\033[33m############################################################${s}"
    ${ECHO_PATH} -e "${mavis}1) \033${mavii}Script Encrypt - \033[32m(Script Şifrele Shell~Bash)\033[0m\033[0m"
    ${ECHO_PATH} -e "${mavis}2) \033${mavii}Script Decrypt - \033[32m(Script Kırar Shell~Bash)\033[0m\033[0m"
	${ECHO_PATH} -e "${mavis}3) \033${mavii}Cpu Ram Disk Kullanımını Gör Ve Temizle\033[0m"
	${ECHO_PATH} -e "${mavis}4) \033${mavii}Script Loglarını Sil\033[0m"
	${ECHO_PATH} -e "${mavis}5) \033${mavii}Encrypt Decrypt Script Loglarını Gör\033[0m"
	${ECHO_PATH} -e "${mavis}6) \033${mavii}Hata Çözümleri\033[0m"
	${ECHO_PATH} -e "${mavis}7) \033${mavii}Script Hakkında Bilgi Al\033[0m"
    ${ECHO_PATH} -e "${mavis}0) \033${mavii}Ana Menüye Dön${s}\033[32m\033[0m"
    ${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
    read other
	case $other in
	1)
	${CLEAR_PATH}
${CLEAR_PATH}
${CLEAR_PATH}
${CD_PATH} $datafile
if [ -f "elsepw" ]
then
${CD_PATH} $datafile
sudo rm -r elsepw
else
${CLEAR_PATH}
fi
${CD_PATH} $datafile
${WGET_PATH} -q --no-check-certificate $server/elsepw
chmod 777 elsepw
${ECHO_PATH}  "Uyarı:Şifrelinicek Scriptiniz Root Dizininde Olmalıdır  
Scriptinizin Başında  '#!/bin/bash'  Olmak Zorundadır   ! " | $lol_path

${ECHO_PATH} -n "Script İsmi:" | $lol_path
read sname
${CD_PATH} /root
${MV_PATH} $sname $datafile
${CD_PATH} $datafile
cp $sname $sname-backupshc
${MV_PATH} $sname-backupshc $backup
${MV_PATH} $sname $sname.sh
${CLEAR_PATH}
su -c "./elsepw -r -f $sname.sh"
${CLEAR_PATH}
if [ ! -f "$datafile/$sname.sh.x" ] 
then
${CLEAR_PATH}
${MV_PATH} $sname.sh $sname
${MV_PATH} $sname /root
${ECHO_PATH}  "Encrypt Yapmak İstediğiniz Scriptin Formatı Geçersiz ! " | $lol_path
$sleep_path 2
exit
fi
${MV_PATH} $sname.sh.x $sname
rm -r $sname.sh.x.c 
rm -r $sname.sh
${MV_PATH} $sname /root
${CLEAR_PATH}
${CURL_PATH} --data "tur=scsifre&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${CURL_PATH} --data "tur=shc:$sname&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${CLEAR_PATH}
${ECHO_PATH} "Scriptiniz Şifrelendi Log Dosyası Oluşturuldu." | $lol_path 
${ECHO_PATH} "Log File:$logfile " | $lol_path 
${ECHO_PATH} "
Encrypt Script By Else
Encrypt Script Name:$sname
Server:$ip
Date:`date +"%A, %e %B %Y, %r"`
Linux Version:`uname -srmo` ">> $logfile
${CD_PATH} /tmp
${MV_PATH} $logfile $log
${CD_PATH} /root
;;
2)
${CLEAR_PATH}
${CD_PATH} $datafile
if [ -f "elsecr" ]
then
${CD_PATH} $datafile
sudo rm -r elsecr
else
${CLEAR_PATH}
fi
${CD_PATH} $datafile
${WGET_PATH} -q --no-check-certificate $server/elsecr
chmod 777 elsecr
${ECHO_PATH}  "Uyarı:Decrypt Edilecek Scriptiniz Root Dizininde Olmalıdır ! " | $lol_path

${ECHO_PATH} -n "Script İsmi:" | $lol_path
read crs
${CD_PATH} /root
${MV_PATH} $crs $datafile
${CD_PATH} $datafile
${MV_PATH} $crs $crs.sh.x
su -c "./elsecr $crs.sh.x"
if [ ! -f "$datafile/$crs.sh" ] 
then
${CLEAR_PATH}
${MV_PATH} $crs.sh.x $crs
${MV_PATH} $crs /root
${ECHO_PATH}  "Decrypt Yapmak İstediğiniz Scriptin Formatı Geçersiz ! " | $lol_path
$sleep_path 2
exit
fi
rm -r $crs.sh.x
${MV_PATH} $crs.sh $crs
cp $crs $crs-backupgcc
${MV_PATH} $crs-backupgcc $backup
${MV_PATH} $crs /root
${CLEAR_PATH}
${CURL_PATH} --data "tur=sckir&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${CURL_PATH} --data "tur=gcc:$crs&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${CLEAR_PATH}
${ECHO_PATH} "Scriptiniz Kırıldı Log Dosyası Oluşturuldu." | $lol_path 
${ECHO_PATH} "Log File:$logfile " | $lol_path 
${ECHO_PATH} "
Decrypt Script By Else
Decrypt Script Name:$crs
Server:$ip
Date:`date +"%A, %e %B %Y, %r"`
Linux Version:`uname -srmo` ">> $logfile
${CD_PATH} /tmp
${MV_PATH} $logfile $log
${CD_PATH} /root
;;
3)
${CLEAR_PATH}
free -m | awk 'NR==2{printf "Ram Kullanımı: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'  | $lol_path
df -h | awk '$NF=="/"{printf "Disk Kullanımı: %d/%dGB (%s)\n", $3,$2,$5}' | $lol_path
top -bn1 | grep load | awk '{printf "CPU Kullanımı: %.2f\n", $(NF-2)}'  | $lol_path
${ECHO_PATH} "Ram Ve Cpu Temizlemek İstermisiniz ? (E/H) : " | $lol_path
${ECHO_PATH}  -n "Cevap:" | $lol_path
read cr
case $cr in
E)
sync; ${ECHO_PATH} 1 > /proc/sys/vm/drop_caches
sync; ${ECHO_PATH} 2 > /proc/sys/vm/drop_caches
sync; ${ECHO_PATH} 3 > /proc/sys/vm/drop_caches
su -c "echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a" root
;;
H)
${ECHO_PATH} "Ana Menüye Dönülüyor." | $lol_path
$sleep_path 2
ana_menu
;;
*)
${CLEAR_PATH}
${ECHO_PATH} "Yanlış Tuşlama !" | $lol_path
$sleep_path 1
other
;;
esac
;;
4)
${CLEAR_PATH}
${ECHO_PATH} "Tüm Script Logları Silincektir." | $lol_path
${ECHO_PATH} "Onaylıyorsanız Evet Onaylamıyorsanız Hayır Yazınız" | $lol_path
${ECHO_PATH}  -n "Cevap: " | $lol_path
read onay
case $onay in
evet)
${CD_PATH} /tmp/$log  
sudo rm -r *
${CLEAR_PATH}
${ECHO_PATH}  "Tüm Loglar Silindi !" | $lol_path
;;
hayır)
${CLEAR_PATH}
${ECHO_PATH} "Çıkış Yapıldı " | $lol_path
exit
;;
*)
${CLEAR_PATH}
${ECHO_PATH} "Yanlış Tuşlama !" | $lol_path
$sleep_path 1
other
;;
esac
;;
5)
${CLEAR_PATH}
${CLEAR_PATH}
${CLEAR_PATH}
${ECHO_PATH}  "Birazdan Yedeklenen Dosyaları Hepsini Göreceksiniz ! " | $lol_path
$sleep_path 3
ls $backup 
${ECHO_PATH}  "Lütfen Kurtarmak İstediğinizi Dosyanın Adını Yazınız" | $lol_path
${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
read kurtar
${CD_PATH} $backup 
if [ ! -f "$kurtar" ] 
then
${CLEAR_PATH}
${ECHO_PATH} "Seçtiğiniz İsimde Bir Dosya Yok !" | $lol_path
$sleep_path 2
other
fi
${CD_PATH} $backup
cp $kurtar $kurtar-yedek
${MV_PATH} $kurtar /root
${CD_PATH} /root
${CLEAR_PATH}
${CLEAR_PATH}
${ECHO_PATH}  "Seçtiğiniz Dosya Root Dizinine Taşında Dosya İsmi:$kurtar" | $lol_path
$sleep_path 2
${CLEAR_PATH}
;;
6)
clear
${ECHO_PATH} -e "\033[33m############################################################\e${s}"
    ${ECHO_PATH} -e "\033[33m#                                          ${s} \033[33m               #\e${s}"
    ${ECHO_PATH} -e "\033[33m#   ${mavis}                Hata Çözümleri   ${s} \033[33m                     #\e${s}"
    ${ECHO_PATH} -e "\033[33m#                                          ${s} \033[33m               #\e${s}"
    ${ECHO_PATH} -e "\033[33m############################################################\e${s}"
    ${ECHO_PATH} -e "${mavis}1) \033${mavii}LogLevel Sorunu\033[32m\033[0m"
	${ECHO_PATH} -e "${mavis}2) \033${mavii}Youtube-DL Sorunu \033[32m\033[0m"
	${ECHO_PATH} -e "${mavis}3) \033${mavii}Tarih Sorunu \033[32m\033[0m"
    ${ECHO_PATH} -e "${mavis}0) \033${mavii}Ana Menü${s}\033[32m\033[0m"
    ${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
read hatacezsin
case $hatacezsin in
 1)
${CLEAR_PATH}
${CD_PATH} /tmp
rm -rf AB${CD_PATH}EFG012345678910-loglevel.txt
touch AB${CD_PATH}EFG012345678910-loglevel.txt
${ECHO_PATH} -e "\033[1;35mİşlem: \033[1;33mLog Level Sorunu Düzeltme"
${ECHO_PATH} -e -n "\e[1;36mPort(ları) Girin (Çıkış için 0'ı tuşla)\e[0m: "
read -a arr
case $arr in
  0)
  ana_sorun
  exit
  ;;
esac
for elem in ${arr[@]}
do 
${ECHO_PATH} $elem >> /tmp/AB${CD_PATH}EFG012345678910-loglevel.txt
done 

while read -r line22
do
    name33="$line22"	
if [ -d "/opt/aurorax/ts3soundboard$name33" ]
then
${CD_PATH} /opt
${CD_PATH} /opt/aurorax/sinusbot$name33
sudo -u aurorax screen -S ts3soundboard$name33 -X quit
sed -i -e "s/LogLevel = 20/LogLevel = 10/g" "/opt/aurorax/ts3soundboard$name33/config.ini"
rm -f /tmp/.sinusbot.lock.
rm -f /tmp/.sinusbot.lock
rm -f /tmp/.X11-unix/X40
sudo -u aurorax screen -AmdS ts3soundboard$name33 ./sinusbot
${ECHO_PATH} -e "\033[1;36m$name33 portunda log level sorunu giderildi.\033[0m"
else
${ECHO_PATH} -e "\033[1;36m$name33 kurulu değil\033[0m"
fi
done < "/tmp/AB${CD_PATH}EFG012345678910-loglevel.txt"
 ;;
 2)
${CLEAR_PATH}
rm -rf /usr/local/bin/youtube-dl
${CD_PATH} /usr/local/bin
sudo ${CURL_PATH} -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl
${APT_PATH} $install_path python -y 
${ECHO_PATH} -e "\033[1;35 Youtube-DL sorunu çözüldü, botları yeniden başlatın.\033[0m" 
 ;;
 3)
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mDİKKAT: \033[1;33mBiçim: Gün/Ay/Yıl Saat:Dakika:Saniye (Örn: 03/12/2018 21:27:00)\033[0m"
${ECHO_PATH} -n -e "\033[1;36mŞuanki Tarih ve Saat: \033[0m" 
read saattarih
date -s "$saattarih"
${ECHO_PATH} -e "\033[1;37mBütün portlarda tarih sorunu giderildi. Botları yeniden başlatın.\033[0m"
;;
*)
other
;;
esac
;;
7)
${CLEAR_PATH}
${ECHO_PATH} "Script Yapımcısı:Can Mert" | $lol_path
${ECHO_PATH} "Resmi Sitesi:ElseThen.org" | $lol_path
${ECHO_PATH} "TeamSpeak3:ts.ikizler.systems" | $lol_path
${ECHO_PATH} "Firma:İkizlerBilisim-İkizlerHost" | $lol_path
${ECHO_PATH} "Sponsorlar:sblinux.net & ikizlerhost.com" | $lol_path
${ECHO_PATH} "Bağış İçin İninal Barkod:0000025727760" | $lol_path
${ECHO_PATH} "FaceBook:fb.com/elsethen" | $lol_path
${ECHO_PATH} "Mail:else@elsethen.org" | $lol_path
${ECHO_PATH} "Script Version:$surum" | $lol_path
${ECHO_PATH} "Scriptimi Kullandığın İçin Teşekkür Ederim." | $lol_path 
${ECHO_PATH} "
Bilgi Alan İp:$ip
Server:$ip
Date:`date +"%A, %e %B %Y, %r"`
Linux Version:`uname -srmo` ">> $logfile
${CD_PATH} /tmp
${MV_PATH} $logfile $log
${CD_PATH} /root
${CURL_PATH} --data "tur=bilgi&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
;;
0)

ana_menu

;;
*)
other
esac	




}


#All Control Menu
function control {
${CD_PATH} $dizin_else/aurorasucces.x
./control_ax
}

#İnstall Menu
function install {
${CLEAR_PATH}
 ${ECHO_PATH} -e "\033[33m############################################################${s}"
    ${ECHO_PATH} -e "\033[33m#                                          ${s} \033[33m               #${s}"
    ${ECHO_PATH} -e "\033[33m#   ${mavis}                Kurulum Menüsü   ${s} \033[33m                     #${s}"
    ${ECHO_PATH} -e "\033[33m#                                          ${s} \033[33m               #${s}"
    ${ECHO_PATH} -e "\033[33m############################################################${s}"
    ${ECHO_PATH} -e  "${mavis}1) \033${mavii}Lisanssız TeamSpeak3 Server - \033[32m(Sürüm:${mavis} 3.5.0)\033[0m"
    ${ECHO_PATH} -e  "${mavis}2) \033${mavii}Sinus Bot - \033[32m(Client Sürüm:${mavis}3.1.9)\033[0m"
    ${ECHO_PATH} -e  "${mavis}3) \033${mavii}Hızlı Kurulum Sinusbot - \033[32m(Client Sürüm:${mavis}3.1.9)\033[0m\033[0m"
	${ECHO_PATH} -e  "${mavis}4) \033${mavii}MineCraft Server \033${mavis}(Bukkit Spigot Vanilla Tüm Sürümler)\033[0m"
    ${ECHO_PATH} -e  "${mavis}5) \033${mavii}CSGO Server\033[0m"
    ${ECHO_PATH} -e  "${mavis}6) \033${mavii}JTS3ServerMod\033[0m \033[0m"
	${ECHO_PATH} -e  "${mavis}7) \033${mavii}TeaSpeak\033[0m"
	${ECHO_PATH} -e  "${mavis}8) \033${mavii}MTA Server\033[0m"
	${ECHO_PATH} -e  "${mavis}9) \033${mavii}Host Kurulumu - \033[32m(mysql-phpmyadmin-apache-php)\033[0m"
	${ECHO_PATH} -e  "${mavis}10) \033${mavii}Durdurana Kadar Sinusbot kur\033[0m"
    ${ECHO_PATH} -e "${mavis}0) \033${mavii}Ana Menüye Dön${s}\033[32m\033[0m"
    ${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
	read install
	case $install in
    1)
	if [ ! -d "/root/server" ] 
then
${CLEAR_PATH}
$sleep_path 0.5
${ECHO_PATH} -e "\033[1;33mServer dosyaları indiriliyor...\033[0m"
${CD_PATH} /root
$sleep_path 0.1
$sleep_path 0.1
${WGET_PATH} -q --no-check-certificate http://dl.4players.de/ts/releases/3.5.0/teamspeak3-server_linux_amd64-3.5.0.tar.bz2 >/dev/null 2>&1
$sleep_path 0.1
tar xvjf teamspeak3-server_linux_amd64-3.5.0.tar.bz2  >/dev/null 2>&1
$sleep_path 0.1
${MV_PATH} teamspeak3-server_linux_amd64 server
rm -rf teamspeak3-server_linux_amd64-3.5.0.tar.bz2
${ECHO_PATH} -e "\033[1;32mServer dosyaları indirildi.\033[0m"
$sleep_path 0.5
${CD_PATH} /root/server
touch .ts3server_license_accepted
$sleep_path 0.1
chmod +x *
$sleep_path 0.1
$sleep_path 0.1
$sleep_path 0.1
./ts3server_startscript.sh start createinifile=1	
${CURL_PATH} --data "tur=teamspeak3&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
$sleep_path 0.5
${ECHO_PATH} "TeamSpeak3 Sunucunuz Kuruldu Sunucu İP Adresiniz : $ip" | $lol_path
else
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;33mTeamSpeak3 sunucusu zaten kurulu!\033[0m"
$sleep_path 1
exit
fi
	;;
	2)
if [ -d "/home/aurorax/botbil" ] 
then
botbilok="22"
else
#File Control
${CLEAR_PATH}
${ECHO_PATH} "Sinusbot Temel Bileşenleri Kuruluyor, Bu işlem Tek Sefere Mahsustur." | $lol_path
$sleep_path 3
${APT_PATH} update 
${APT_PATH} upgrade 
${APT_PATH} $install_path x11vnc xvfb libxcursor1 ca-certificates bzip2 libnss3 libegl1-mesa x11-xkb-utils libasound2 -y
update-ca-certificates	
${APT_PATH} $install_path python -y 
${APT_PATH} $install_path libglib2.0-0
if [ ! -d "/opt/aurorax" ]		
then					 
$mkdir_path /opt/aurorax
fi
#File Control and
#Teamspeak3 control
${CLEAR_PATH}
if [ ! -d "/opt/aurorax/TeamSpeak3-Client-linux_amd64" ]
then
${CLEAR_PATH}
${ECHO_PATH} -e "${sari}Teamspeak3 Dosyasını 1 Kereye Mahsus Kurulum Yapacaktır."
${ECHO_PATH} -e "${sari}Ilk Olarak ${kirmizi}ENTER ${sari}basin,sonra ${kirmizi}q, ${sari}sonra ${kirmizi}y ${sari}yazip ${kirmizi}ENTER ${sari}tuşuna basin."
${ECHO_PATH} -e "${sari}Ilk Olarak ${kirmizi}ENTER ${sari}basin,sonra ${kirmizi}q, ${sari}sonra ${kirmizi}y ${sari}yazip ${kirmizi}ENTER ${sari}tuşuna basin."
${ECHO_PATH} -e "${sari}Ilk Olarak ${kirmizi}ENTER ${sari}basin,sonra ${kirmizi}q, ${sari}sonra ${kirmizi}y ${sari}yazip ${kirmizi}ENTER ${sari}tuşuna basin."
${CD_PATH} /opt/aurorax
${WGET_PATH} -q --no-check-certificate http://dl.4players.de/ts/releases/3.1.9/TeamSpeak3-Client-linux_amd64-3.1.9.run
chmod 777 TeamSpeak3-Client-linux_amd64-3.1.9.run
$sleep_path 1 
su -c "./TeamSpeak3-Client-linux_amd64-3.1.9.run" 
rm -rf TeamSpeak3-Client-linux_amd64-3.1.9.run
$sleep_path 1 
${CD_PATH} /opt/aurorax/TeamSpeak3-Client-linux_amd64 
rm -r plugins
$mkdir_path plugins
${CD_PATH} plugins
${WGET_PATH} -q $server/libsoundbot_plugin.so
fi
${CLEAR_PATH}
#Teamspeak3 control and
#youtubedl control
if [ ! -f "/usr/local/bin/youtube-dl" ]
then
${CLEAR_PATH}
${ECHO_PATH} -e "${sari}Youtube-dl Yükleniyor."
${CD_PATH} /usr/local/bin
${WGET_PATH} -q --no-check-certificate https://yt-dl.org/downloads/latest/youtube-dl
chmod 777 youtube-dl
${CLEAR_PATH}
${ECHO_PATH} -e "${sari}Youtube-dl Yüklendi."
$sleep_path 0.5
fi
#youtubedl control and
#sbotfile control
if [ ! -d "/opt/aurorax/sinusbot_files" ]
then
${CD_PATH} /opt/aurorax
$mkdir_path sinusbot_files
${CD_PATH} sinusbot_files
${WGET_PATH} -q --no-check-certificate https://www.sinusbot.com/dl/sinusbot.current.tar.bz2
tar xvjf sinusbot.current.tar.bz2 
rm -rf sinusbot.current.tar.bz2
${CD_PATH} /opt/aurorax/sinusbot_files
${WGET_PATH} -q --no-check-certificate $server/config.ini
chmod 777 config.ini
${CD_PATH} /opt/aurorax/sinusbot_files/scripts/
${WGET_PATH} -q --no-check-certificate $server/Youtube_Search.js
chmod 777 Youtube_Search.js
$mkdir_path /home/aurorax/botbil
fi
#sbotfile control and
fi
${CLEAR_PATH}
${CD_PATH} /opt/aurorax
rm -rf normal_port.txt
${CURL_PATH} --data "tur=sinusbot&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${ECHO_PATH} -e -n "\e[1;36mPort(ları) Girin (Çıkış için 0'ı tuşla)\e[0m: "
read -a arr
case $arr in
  0)
  ana_menu
  exit
  ;;
esac
${ECHO_PATH} -e -n "\e[1;36mPanel Şifresi:\e[0m: "
read panelsifre23
if [ ! -e /bin/sblinux_blacklistpatch ]
then
${ECHO_PATH} -e "\e[1;32m SinusBot blacklist patch uygulanıyor. (Teşekkürler; Ömer Şeran ~ SBLinux )"
${CD_PATH} /bin
wget -q $server/sblinux_blacklistpatch >/dev/null 2>&1
chmod +x sblinux_blacklistpatch
./sblinux_blacklistpatch
fi
for elem in ${arr[@]}
do
${ECHO_PATH} $elem >> /opt/aurorax/normal_port.txt
name=$elem
if [ ! -d "/opt/aurorax/ts3soundboard$name" ]
then
>/dev/null 2>&1 </dev/tcp/$ip/$name
if [ "$?" -ne 0 ]; then
${CD_PATH} /opt
${CD_PATH} aurorax
cp -R sinusbot_files ts3soundboard$name
${CD_PATH} /opt/aurorax/ts3soundboard$name
ts3_data=/opt/aurorax/ts3soundboard$name/data/
sed -i "s@TS3_DATA@$ts3_data@" config.ini
sed -i "s@999@$name@" config.ini
sudo chown -R aurorax /opt
sudo chown aurorax /var/run/screen/S-aurorax
rm -f /tmp/.sinusbot.lock.
rm -f /tmp/.sinusbot.lock
rm -f /tmp/.X11-unix/X40
${CD_PATH} /opt/aurorax/ts3soundboard$name
sudo -u aurorax chmod +x *
sleep 0.1
rm -f /tmp/.sinusbot.lock.
rm -f /tmp/.sinusbot.lock
rm -f /tmp/.X11-unix/X40
sudo -u aurorax screen -AmdS ts3soundboard$name ./sinusbot --override-password=$panelsifre23
${ECHO_PATH} -e "\033[1;36m$name port kuruldu."
else
 ${ECHO_PATH} "$name numaralı port makinede kapalı veya zaten kurulmuş gözüküyor, atlatıldı."
fi
else
${ECHO_PATH} -e "\033[1;36m$name port zaten kurulu, atlatıldı."
fi
done
${ECHO_PATH} -e "\033[1;32mKurulum tamamlandı, kurulan portlar aşağıda listelenmiştir."
while read -r portline2
do
    names2="$portline2"
${ECHO_PATH} "http://$ip:$names2 ~ admin ~ $panelsifre23"
done < "/opt/aurorax/normal_port.txt"
rm -rf /opt/aurorax/normal_port.txt
sleep 2
${ECHO_PATH} -e "\033[0;32mAna menüye dönmek için enter'a basın"
read enterbom
case $enterbom in
  *)
  ana_menu
  ;;
esac
	;;
    3)
if [ -d "/home/aurorax/botbil" ] 
then
botbilok="22"
else
#File Control
${CLEAR_PATH}
${ECHO_PATH} "Sinusbot Temel Bileşenleri Kuruluyor, Bu işlem Tek Sefere Mahsustur." | $lol_path
$sleep_path 3
${APT_PATH} update 
${APT_PATH} upgrade 
${APT_PATH} $install_path x11vnc xvfb libxcursor1 ca-certificates bzip2 libnss3 libegl1-mesa x11-xkb-utils libasound2 -y
update-ca-certificates	
${APT_PATH} $install_path python -y 
${APT_PATH} $install_path libglib2.0-0
if [ ! -d "/opt/aurorax" ]		
then					 
$mkdir_path /opt/aurorax
fi
#File Control and
#Teamspeak3 control
${CLEAR_PATH}
if [ ! -d "/opt/aurorax/TeamSpeak3-Client-linux_amd64" ]
then
${CLEAR_PATH}
${ECHO_PATH} -e "${sari}Teamspeak3 Dosyasını 1 Kereye Mahsus Kurulum Yapacaktır."
${ECHO_PATH} -e "${sari}Ilk Olarak ${kirmizi}ENTER ${sari}basin,sonra ${kirmizi}q, ${sari}sonra ${kirmizi}y ${sari}yazip ${kirmizi}ENTER ${sari}tuşuna basin."
${ECHO_PATH} -e "${sari}Ilk Olarak ${kirmizi}ENTER ${sari}basin,sonra ${kirmizi}q, ${sari}sonra ${kirmizi}y ${sari}yazip ${kirmizi}ENTER ${sari}tuşuna basin."
${ECHO_PATH} -e "${sari}Ilk Olarak ${kirmizi}ENTER ${sari}basin,sonra ${kirmizi}q, ${sari}sonra ${kirmizi}y ${sari}yazip ${kirmizi}ENTER ${sari}tuşuna basin."
${CD_PATH} /opt/aurorax
${WGET_PATH} -q --no-check-certificate http://dl.4players.de/ts/releases/3.1.9/TeamSpeak3-Client-linux_amd64-3.1.9.run
chmod 777 TeamSpeak3-Client-linux_amd64-3.1.9.run
$sleep_path 1 
su -c "./TeamSpeak3-Client-linux_amd64-3.1.9.run" 
rm -rf TeamSpeak3-Client-linux_amd64-3.1.9.run
$sleep_path 1 
${CD_PATH} /opt/aurorax/TeamSpeak3-Client-linux_amd64 
rm -r plugins
$mkdir_path plugins
${CD_PATH} plugins
${WGET_PATH} -q $server/libsoundbot_plugin.so
fi
${CLEAR_PATH}
#Teamspeak3 control and
#youtubedl control
if [ ! -f "/usr/local/bin/youtube-dl" ]
then
${CLEAR_PATH}
${ECHO_PATH} -e "${sari}Youtube-dl Yükleniyor."
${CD_PATH} /usr/local/bin
${WGET_PATH} -q --no-check-certificate https://yt-dl.org/downloads/latest/youtube-dl
chmod 777 youtube-dl
${CLEAR_PATH}
${ECHO_PATH} -e "${sari}Youtube-dl Yüklendi."
$sleep_path 0.5
fi
#youtubedl control and
#sbotfile control
if [ ! -d "/opt/aurorax/sinusbot_files" ]
then
${CD_PATH} /opt/aurorax
$mkdir_path sinusbot_files
${CD_PATH} sinusbot_files
${WGET_PATH} -q --no-check-certificate https://www.sinusbot.com/dl/sinusbot.current.tar.bz2
tar xvjf sinusbot.current.tar.bz2 
rm -rf sinusbot.current.tar.bz2
${CD_PATH} /opt/aurorax/sinusbot_files
${WGET_PATH} -q --no-check-certificate $server/config.ini
chmod 777 config.ini
${CD_PATH} /opt/aurorax/sinusbot_files/scripts/
${WGET_PATH} -q --no-check-certificate $server/Youtube_Search.js
chmod 777 Youtube_Search.js
$mkdir_path /home/aurorax/botbil
fi
#sbotfile control and
fi
#SBOT Code
${CURL_PATH} --data "tur=hsinusbot&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${CLEAR_PATH}
rm -rf /opt/aurorax/portlar.txt
${ECHO_PATH} -e -n "\e[1;36mKaç adet port kurulacak: (Çıkış için 0'ı tuşla)\e[0m: "
read kacport
case $kacport in
  0)
  ana_menu
  exit
  ;;
esac
${ECHO_PATH} -e -n "\e[1;36mPanel Şifresi:\e[0m: "
read panelsifre22
${ECHO_PATH} -e "\e[1;32m Kurulum başlıyor lütfen bekleyin... "
for n in $(seq $kacport); 
    do
	random_port=$(( ((RANDOM<<15)|RANDOM) % 49152 + 10000 ))
    status="$(nc -z 127.0.0.1 $random_port < /dev/null &>/dev/null; ${ECHO_PATH} $?)"
    if [ "${status}" != "0" ]; then
		${ECHO_PATH} $random_port >> /opt/aurorax/portlar.txt
	fi
    done  
sleep 0.2
if [ ! -e /bin/sblinux_blacklistpatch ]
then
${ECHO_PATH} -e "\e[1;32m SinusBot blacklist patch uygulanıyor. (Teşekkürler; Ömer Şeran ~ SBLinux)"
${CD_PATH} /bin
wget -q $server/sblinux_blacklistpatch >/dev/null 2>&1
chmod +x sblinux_blacklistpatch
./sblinux_blacklistpatch
fi

while read -r portline
do
    names="$portline"
if [ ! -d "/opt/aurorax/ts3soundboard$names" ]
then
${CD_PATH} /opt
${CD_PATH} aurorax
cp -R sinusbot_files ts3soundboard$names
${CD_PATH} /opt/aurorax/ts3soundboard$names
ts3_data=/opt/aurorax/ts3soundboard$names/data/
sed -i "s@TS3_DATA@$ts3_data@" config.ini
sed -i "s@999@$names@" config.ini
sudo chown -R aurorax /opt
sudo chown aurorax /var/run/screen/S-aurorax
rm -f /tmp/.sinusbot.lock.
rm -f /tmp/.sinusbot.lock
rm -f /tmp/.X11-unix/X40
${CD_PATH} /opt/aurorax/ts3soundboard$names
sudo -u aurorax chmod +x *
sleep 0.1
rm -f /tmp/.sinusbot.lock.
rm -f /tmp/.sinusbot.lock
rm -f /tmp/.X11-unix/X40
sudo -u aurorax screen -AmdS ts3soundboard$names ./sinusbot --override-password=$panelsifre22
${ECHO_PATH} -e "\033[1;36m$names port kuruldu.\033[0m"
else
${ECHO_PATH} -e "\033[1;36m$names port zaten kurulu, atlatıldı.\033[0m"
fi
done < "/opt/aurorax/portlar.txt"
clear
${ECHO_PATH} -e "\033[1;32mKurulum tamamlandı, kurulan portlar aşağıda listelenmiştir."
while read -r portline2
do
    names2="$portline2"
${ECHO_PATH} "http://$ip:$names2 ~ admin ~ $panelsifre22"
done < "/opt/aurorax/portlar.txt"
rm -rf /opt/aurorax/portlar.txt	
sleep 2
${ECHO_PATH} -e "\033[0;32mAna menüye dönmek için enter'a basın\033[0m"
read enterbom
case $enterbom in
  *)
  ana_menu
  ;;
esac 
	;;
    4)
if [ ! -d "/root/minecraft-server" ] 
then
ok="22"
else
${CLEAR_PATH}
${ECHO_PATH} "Minecraft Sunucusu Zaten Kurulu." | $lol_path
exit
fi 	
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;31mSeçmek İstediğiniz Paketin Numarasını Yazınız.
\033[1;33mSpigot${mavii}(1)${s}${s}
\033[1;33mBukkit${mavii}(2)${s}${s}
\033[1;33mVanilla${mavii}(3)${s}${s}\033[0m"
read -p $'\e[1;36mCevap\e[0m: ' artmcstat

            if [ "$artmcstat" = "1" ];then
			
			if which java >/dev/null 2>&1 ; then
			${CLEAR_PATH}
				${ECHO_PATH} "Java Kontrol Ediliyor." | $lol_path
				for i in {5..1};do ${ECHO_PATH} -n "."| $lol_path && sleep 1; done
			 ${ECHO_PATH} "Sunucunuzda Java Kurulu." | $lol_path
			 java -version
		     else
			 ${ECHO_PATH} -e "\033[33m\033[31mSunucunuzda Java Kurulu Diğil. Kuruluyor\033[33m\e[0m"
			 for i in {5..1};do ${ECHO_PATH} -n "."| $lol_path && sleep 1; done
			 ${CD_PATH} /tmp
			 ${WGET_PATH} -q $server/mc_baslat.sh
			 chmod 777 mc_baslat.sh
		     ./mc_baslat.sh java
			 rm -r /tmp/mc_baslat.sh
			 fi
                ${CLEAR_PATH}
				${CD_PATH} /root
                ${ECHO_PATH}  "Lütfen Sürüm Seçiniz."  | $lol_path
                ${ECHO_PATH}  "1.4.6/1.4.7/1.5.1/1.5.2/1.6.2/1.6.4/1.7.2/1.7.5/1.7.8/1.7.9" | $lol_path
                ${ECHO_PATH}  "1.7.10/1.8/1.8.3/1.8.4/1.8.5/1.8.6/1.8.7/1.8.8/1.9/1.9.2" | $lol_path
                ${ECHO_PATH}  "1.9.4/1.10/1.10.2/1.11/1.11.1/1.11.2/1.12/1.12.1/1.12.2" | $lol_path
                read -p $'\e[1;36mSürüm\e[0m: ' mcstat
				
			
                if [ "$mcstat" = "1.4.6" ] || [ "$mcstat" = "1.4.7" ] || [ "$mcstat" = "1.5.1" ] || [ "$mcstat" = "1.5.2" ] || [ "$mcstat" = "1.6.2" ] || [ "$mcstat" = "1.6.4" ] || [ "$mcstat" = "1.7.2" ] || [ "$mcstat" = "1.7.5" ] || [ "$mcstat" = "1.7.8" ] || [ "$mcstat" = "1.7.9" ] || [ "$mcstat" = "1.7.10" ] || [ "$mcstat" = "1.8" ] || [ "$mcstat" = "1.8.3" ] || [ "$mcstat" = "1.8.4" ] || [ "$mcstat" = "1.8.5" ] || [ "$mcstat" = "1.8.6" ] || [ "$mcstat" = "1.8.7" ] || [ "$mcstat" = "1.8.8" ] || [ "$mcstat" = "1.9" ] || [ "$mcstat" = "1.9.2" ] || [ "$mcstat" = "1.9.4" ] || [ "$mcstat" = "1.10" ] || [ "$mcstat" = "1.10.2" ] || [ "$mcstat" = "1.11" ] || [ "$mcstat" = "1.11.1" ] || [ "$mcstat" = "1.11.2" ] || [ "$mcstat" = "1.12" ] || [ "$mcstat" = "1.12.1" ] || [ "$mcstat" = "1.12.2" ]; then
                            

                    if [ "$mcstat" = "1.4.6" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.4.6-R0.4-SNAPSHOT.jar
                        ${MV_PATH} spigot-1.4.6-R0.4-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.4.7" ]; then             

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.4.7-R1.1-SNAPSHOT.jar
                        ${MV_PATH} spigot-1.4.7-R1.1-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.5.1" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.5.1-R0.1-SNAPSHOT.jar
                        ${MV_PATH} spigot-1.5.1-R0.1-SNAPSHOT.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.5.2" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.5.2-R1.1-SNAPSHOT.jar
                        ${MV_PATH} spigot-1.5.2-R1.1-SNAPSHOT.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.6.2" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.6.2-R1.1-SNAPSHOT.jar
                        ${MV_PATH} spigot-1.6.2-R1.1-SNAPSHOT.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.6.4" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.6.4-R2.1-SNAPSHOT.jar
                        ${MV_PATH} spigot-1.6.4-R2.1-SNAPSHOT.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.7.2" ]; then 

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.7.2-R0.4-SNAPSHOT-1339.jar
                        ${MV_PATH} spigot-1.7.2-R0.4-SNAPSHOT-1339.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.7.5" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.7.5-R0.1-SNAPSHOT-1387.jar
                        ${MV_PATH} spigot-1.7.5-R0.1-SNAPSHOT-1387.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.7.8" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.7.8-R0.1-SNAPSHOT.jar
                        ${MV_PATH} spigot-1.7.8-R0.1-SNAPSHOT.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.7.9" ]; then              

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.7.9-R0.2-SNAPSHOT.jar
                        ${MV_PATH} spigot-1.7.9-R0.2-SNAPSHOT.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.7.10" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.7.10-SNAPSHOT-b1657.jar
                        ${MV_PATH} spigot-1.7.10-SNAPSHOT-b1657.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.8" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.8-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} spigot-1.8-R0.1-SNAPSHOT-latest.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.8.3" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.8.3-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} spigot-1.8.3-R0.1-SNAPSHOT-latest.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.8.4" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.8.4-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} spigot-1.8.4-R0.1-SNAPSHOT-latest.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.8.5" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.8.5-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} spigot-1.8.5-R0.1-SNAPSHOT-latest.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.8.6" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.8.6-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} spigot-1.8.6-R0.1-SNAPSHOT-latest.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.8.7" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.8.7-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} spigot-1.8.7-R0.1-SNAPSHOT-latest.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.8.8" ]; then               
    
                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.8.8-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} spigot-1.8.8-R0.1-SNAPSHOT-latest.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.9" ]; then               
    
                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.9-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} spigot-1.9-R0.1-SNAPSHOT-latest.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.9.2" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.9.2-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} spigot-1.9.2-R0.1-SNAPSHOT-latest.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.9.4" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.9.4-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} spigot-1.9.4-R0.1-SNAPSHOT-latest.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.10" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.10-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} spigot-1.10-R0.1-SNAPSHOT-latest.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.10.2" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.10.2-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} spigot-1.10.2-R0.1-SNAPSHOT-latest.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.11" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.11.jar
                        ${MV_PATH} spigot-1.11.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.11.1" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.11.1.jar
                        ${MV_PATH} spigot-1.11.1.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.11.2" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.11.2.jar
                        ${MV_PATH} spigot-1.11.2.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.12" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.12.jar
                        ${MV_PATH} spigot-1.12.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.12.1" ]; then               

                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.12.1.jar
                        ${MV_PATH} spigot-1.12.1.jar minecraft.jar
                                
                    elif [ "$mcstat" = "1.12.2" ]; then               
                            
                        ${WGET_PATH} https://cdn.getbukkit.org/spigot/spigot-1.12.2.jar
                        ${MV_PATH} spigot-1.12.2.jar minecraft.jar
                            
                    fi
                    
                else
                   ${ECHO_PATH} -e "\033[1;33mYanlış Sürüm Seçtiniz !033[1;32m \033[0m"
                fi
				${CLEAR_PATH}
                ${ECHO_PATH}  "Sunucunuz Kaç GB Ram Veya MB De Olsun ?"  | $lol_path
                ${ECHO_PATH}  "Ram Kullanımınız Ve Toplam Raminiz" | $lol_path
				free -m | awk 'NR==2{printf "Ram Kullanımı: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'  | $lol_path
                ${ECHO_PATH}  "Örnek: 1024M Veya 1G" | $lol_path
				read -p $'\e[1;36mRam\e[0m: ' ram
				${CLEAR_PATH}
				if [ ! -d "/root/minecraft-server" ] 
				then
				$mkdir_path /root/minecraft-server
                fi     
				${CD_PATH} minecraft-server
				${WGET_PATH} -q $server/server.properties
                ${ECHO_PATH} -e -n "\033[1;31mSunucu İsmi: ${s}"
				read mname
                ${ECHO_PATH} -e -n "\033[1;33mMax Kaç Oyuncu:\033[0m"
				read mcplayer
				read -p $'\033[1;31mOnlineMode \033[1;33m(Kapalı - Açık):' monline
				if [ "$monline" = "Kapalı" ];then
				sed -i "s/online-mode=true/online-mode=false/" /root/minecraft-server/server.properties
				elif [ "$monline" = "Açık" ];then
				sed -i "s/online-mode=true/online-mode=true/" /root/minecraft-server/server.properties
                elif [ "$monline" = "kapalı" ];then
				sed -i "s/online-mode=true/online-mode=false/" /root/minecraft-server/server.properties
                elif [ "$monline" = "açık" ];then
				sed -i "s/online-mode=true/online-mode=true/" /root/minecraft-server/server.properties
                fi
				sed -i "s/motd=A Minecraft Server/motd=$mname/" /root/minecraft-server/server.properties
				sed -i "s/max-players=20/max-players=$mcplayer/" /root/minecraft-server/server.properties
				${WGET_PATH} -q $server/mc_baslat.sh
				mv /root/minecraft.jar /root/minecraft-server
				sed -i "s/512M/$ram/" /root/minecraft-server/mc_baslat.sh
			    if [ ! -d "/root/minecraft-server/.eulatxt" ] 
			    then
                ${WGET_PATH} -q $server/eula.txt
				$mkdir_path .eulatxt
                fi        
				chmod 777 mc_baslat.sh
				./mc_baslat.sh start
		        ${CURL_PATH} --data "tur=spigot&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
				${ECHO_PATH} "Sunucunuz Otomatik Başlatılmıştır Yönetim Menüsünden Konsolu Açabilirsiniz." | $lol_path
				
 elif [ "$artmcstat" = "2" ];then

 if which java >/dev/null 2>&1 ; then
			${CLEAR_PATH}
				${ECHO_PATH} "Java Kontrol Ediliyor." | $lol_path
				for i in {5..1};do ${ECHO_PATH} -n "."| $lol_path && sleep 1; done
			 ${ECHO_PATH} "Sunucunuzda Java Kurulu." | $lol_path
			 java -version
		     else
			 ${ECHO_PATH} -e "\033[33m\033[31mSunucunuzda Java Kurulu Diğil. Kuruluyor\033[33m\e[0m"
			 for i in {5..1};do ${ECHO_PATH} -n "."| $lol_path && sleep 1; done
			 ${CD_PATH} /tmp
			 ${WGET_PATH} -q $server/mc_baslat.sh
			 chmod 777 mc_baslat.sh
		     ./mc_baslat.sh java
			 rm -r /tmp/mc_baslat.sh
			 fi
                ${CLEAR_PATH}
				${CD_PATH} /root
                ${ECHO_PATH}  "Lütfen Sürüm Seçiniz."  | $lol_path
                ${ECHO_PATH} "1.0/1.1/1.2.2/1.2.3/1.2.4/1.2.5/1.3.1/1.3.2/1.4.2/1.4.5/1.4.6" | $lol_path
                ${ECHO_PATH} "1.4.7/1.5/1.5.1/1.5.2/1.6.1/1.6.2/1.6.4/1.7.2/1.7.5/1.7.8/1.7.9" | $lol_path
                ${ECHO_PATH} "1.7.10/1.8/1.8.3/1.8.4/1.8.5/1.8.6/1.8.7/1.8.8/1.9/1.9.2" | $lol_path
                ${ECHO_PATH} -e "1.9.4/1.10/1.10.2/1.11/1.11.1/1.11.2/1.12/1.12.1/1.12.2 " | $lol_path
                read -p $'\e[1;36mSürüm\e[0m: ' mcstat
			
                if [ "$mcstat" = "1.0" ] || [ "$mcstat" = "1.1" ] || [ "$mcstat" = "1.2.2" ] || [ "$mcstat" = "1.2.3" ] || [ "$mcstat" = "1.2.4" ] || [ "$mcstat" = "1.2.5" ] || [ "$mcstat" = "1.3.1" ] || [ "$mcstat" = "1.3.2" ] || [ "$mcstat" = "1.4.2" ] || [ "$mcstat" = "1.4.5" ] || [ "$mcstat" = "1.4.6" ] || [ "$mcstat" = "1.4.7" ] || [ "$mcstat" = "1.5" ] || [ "$mcstat" = "1.5.1" ] || [ "$mcstat" = "1.5.2" ] || [ "$mcstat" = "1.6.1" ] || [ "$mcstat" = "1.6.2" ] || [ "$mcstat" = "1.6.4" ] || [ "$mcstat" = "1.7.2" ] || [ "$mcstat" = "1.7.5" ] || [ "$mcstat" = "1.7.8" ] || [ "$mcstat" = "1.7.9" ] || [ "$mcstat" = "1.7.10" ] || [ "$mcstat" = "1.8" ] || [ "$mcstat" = "1.8.3" ] || [ "$mcstat" = "1.8.4" ] || [ "$mcstat" = "1.8.5" ] || [ "$mcstat" = "1.8.6" ] || [ "$mcstat" = "1.8.7" ] || [ "$mcstat" = "1.8.8" ] || [ "$mcstat" = "1.9" ] || [ "$mcstat" = "1.9.2" ] || [ "$mcstat" = "1.9.4" ] || [ "$mcstat" = "1.10" ] || [ "$mcstat" = "1.10.2" ] || [ "$mcstat" = "1.11" ] || [ "$mcstat" = "1.11.1" ] || [ "$mcstat" = "1.11.2" ] || [ "$mcstat" = "1.12" ] || [ "$mcstat" = "1.12.1" ] || [ "$mcstat" = "1.12.2" ]; then
                            
                            
                    
                    if [ "$mcstat" = "1.0" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.0.0-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.0.0-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.1" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.1-R5-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.1-R5-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.2.2" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.2.2-R0.1-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.2.2-R0.1-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.2.3" ]; then     

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.2.3-R0.3-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.2.3-R0.3-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.2.4" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.2.4-R1.1-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.2.4-R1.1-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.2.5" ]; then                                   

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.2.5-R5.1-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.2.5-R5.1-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.3.1" ]; then                  

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.3.1-R2.1-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.3.1-R2.1-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.3.2" ]; then 

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.3.2-R2.1-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.3.2-R2.1-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.4.2" ]; then 

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.4.2-R0.3-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.4.2-R0.3-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.4.5" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.4.5-R1.1-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.4.5-R1.1-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.4.6" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.4.6-R0.4-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.4.6-R0.4-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.4.7" ]; then   

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.4.7-R1.1-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.4.7-R1.1-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.5" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.5-R0.1-20130317.180842-21.jar
                        ${MV_PATH} craftbukkit-1.5-R0.1-20130317.180842-21.jar minecraft.jar

                    elif [ "$mcstat" = "1.5.1" ]; then 

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.5.1-R0.2-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.5.1-R0.2-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.5.2" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.5.2-R1.0.jar
                        ${MV_PATH} craftbukkit-1.5.2-R1.0.jar minecraft.jar

                    elif [ "$mcstat" = "1.6.1" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.6.1-R0.1-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.6.1-R0.1-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.6.2" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.6.2-R0.1-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.6.2-R0.1-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.6.4" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.6.4-R2.0.jar
                        ${MV_PATH} craftbukkit-1.6.4-R2.0.jar minecraft.jar
    
                    elif [ "$mcstat" = "1.7.2" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.2-R0.4-20140216.012104-3.jar
                        ${MV_PATH} craftbukkit-1.7.2-R0.4-20140216.012104-3.jar minecraft.jar

                    elif [ "$mcstat" = "1.7.5" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.5-R0.1-20140402.020013-12.jar
                        ${MV_PATH} craftbukkit-1.7.5-R0.1-20140402.020013-12.jar minecraft.jar

                    elif [ "$mcstat" = "1.7.8" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.8-R0.1-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.7.8-R0.1-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.7.9" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.9-R0.2-SNAPSHOT.jar
                        ${MV_PATH} craftbukkit-1.7.9-R0.2-SNAPSHOT.jar minecraft.jar

                    elif [ "$mcstat" = "1.7.10" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.7.10-R0.1-20140808.005431-8.jar
                        ${MV_PATH} craftbukkit-1.7.10-R0.1-20140808.005431-8.jar minecraft.jar

                    elif [ "$mcstat" = "1.8" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.8-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} craftbukkit-1.8-R0.1-SNAPSHOT-latest.jar minecraft.jar

                    elif [ "$mcstat" = "1.8.3" ]; then      

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.8.3-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} craftbukkit-1.8.3-R0.1-SNAPSHOT-latest.jar minecraft.jar

                    elif [ "$mcstat" = "1.8.4" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.8.4-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} craftbukkit-1.8.4-R0.1-SNAPSHOT-latest.jar minecraft.jar

                    elif [ "$mcstat" = "1.8.5" ]; then                                                                                                   

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.8.5-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} craftbukkit-1.8.5-R0.1-SNAPSHOT-latest.jar minecraft.jar

                    elif [ "$mcstat" = "1.8.6" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.8.6-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} craftbukkit-1.8.6-R0.1-SNAPSHOT-latest.jar minecraft.jar

                    elif [ "$mcstat" = "1.8.7" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.8.7-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} craftbukkit-1.8.7-R0.1-SNAPSHOT-latest.jar minecraft.jar

                    elif [ "$mcstat" = "1.8.8" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.8.8-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} craftbukkit-1.8.8-R0.1-SNAPSHOT-latest.jar minecraft.jar

                    elif [ "$mcstat" = "1.9" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.9-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} craftbukkit-1.9-R0.1-SNAPSHOT-latest.jar minecraft.jar

                    elif [ "$mcstat" = "1.9.2" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.9.2-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} craftbukkit-1.9.2-R0.1-SNAPSHOT-latest.jar minecraft.jar

                    elif [ "$mcstat" = "1.9.4" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.9.4-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} craftbukkit-1.9.4-R0.1-SNAPSHOT-latest.jar minecraft.jar

                    elif [ "$mcstat" = "1.10" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.10-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} craftbukkit-1.10-R0.1-SNAPSHOT-latest.jar minecraft.jar

                    elif [ "$mcstat" = "1.10.2" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.10.2-R0.1-SNAPSHOT-latest.jar
                        ${MV_PATH} craftbukkit-1.10.2-R0.1-SNAPSHOT-latest.jar minecraft.jar

                    elif [ "$mcstat" = "1.11" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.11.jar
                        ${MV_PATH} craftbukkit-1.11.jar minecraft.jar

                    elif [ "$mcstat" = "1.11.1" ]; then
                                                                                                                        
                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.11.1.jar
                        ${MV_PATH} craftbukkit-1.11.1.jar minecraft.jar

                    elif [ "$mcstat" = "1.11.2" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.11.2.jar
                        ${MV_PATH} craftbukkit-1.11.2.jar minecraft.jar

                    elif [ "$mcstat" = "1.12" ]; then                                                                          

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.12.jar
                        ${MV_PATH} craftbukkit-1.12.jar minecraft.jar

                    elif [ "$mcstat" = "1.12.1" ]; then

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.12.1.jar
                        ${MV_PATH} craftbukkit-1.12.1.jar minecraft.jar       

                    elif [ "$mcstat" = "1.12.2" ]; then          

                        ${WGET_PATH} https://cdn.getbukkit.org/craftbukkit/craftbukkit-1.12.2.jar
                        ${MV_PATH} craftbukkit-1.12.2.jar minecraft.jar

                    fi
                else
                    ${ECHO_PATH} -e "\033[1;33mYanlış Sürüm Seçtiniz !033[1;32m \033[0m"
                fi
				${CLEAR_PATH}
                ${ECHO_PATH}  "Sunucunuz Kaç GB Ram Veya MB De Olsun ?"  | $lol_path
                ${ECHO_PATH}  "Ram Kullanımınız Ve Toplam Raminiz" | $lol_path
				free -m | awk 'NR==2{printf "Ram Kullanımı: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'  | $lol_path
                ${ECHO_PATH}  "Örnek: 1024M Veya 1G" | $lol_path
				read -p $'\e[1;36mRam\e[0m: ' ram
				${CLEAR_PATH}
				if [ ! -d "/root/minecraft-server" ] 
				then
				$mkdir_path /root/minecraft-server
                fi     
				${CD_PATH} minecraft-server
				${WGET_PATH} -q $server/server.properties
                ${ECHO_PATH} -e -n "\033[1;31mSunucu İsmi: ${s}"
				read mname
                ${ECHO_PATH} -e -n "\033[1;33mMax Kaç Oyuncu:\033[0m"
				read mcplayer
				read -p $'\033[1;31mOnlineMode \033[1;33m(Kapalı - Açık):' monline
				if [ "$monline" = "Kapalı" ];then
				sed -i "s/online-mode=true/online-mode=false/" /root/minecraft-server/server.properties
				elif [ "$monline" = "Açık" ];then
				sed -i "s/online-mode=true/online-mode=true/" /root/minecraft-server/server.properties
                elif [ "$monline" = "kapalı" ];then
				sed -i "s/online-mode=true/online-mode=false/" /root/minecraft-server/server.properties
                elif [ "$monline" = "açık" ];then
				sed -i "s/online-mode=true/online-mode=true/" /root/minecraft-server/server.properties
                fi
				sed -i "s/motd=A Minecraft Server/motd=$mname/" /root/minecraft-server/server.properties
				sed -i "s/max-players=20/max-players=$mcplayer/" /root/minecraft-server/server.properties
				${WGET_PATH} -q $server/mc_baslat.sh
				mv /root/minecraft.jar /root/minecraft-server
				sed -i "s/512M/$ram/" /root/minecraft-server/mc_baslat.sh
			   if [ ! -d "/root/minecraft-server/.eulatxt" ] 
			   then
                ${WGET_PATH} -q $server/eula.txt
				$mkdir_path .eulatxt
                  fi        
				chmod 777 mc_baslat.sh
				./mc_baslat.sh start
				${CURL_PATH} --data "tur=bukkit&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
				${ECHO_PATH} "Sunucunuz Otomatik Başlatılmıştır Yönetim Menüsünden Konsolu Açabilirsiniz." | $lol_path
				
 elif [ "$artmcstat" = "3" ];then
 
  if which java >/dev/null 2>&1 ; then
			${CLEAR_PATH}
				${ECHO_PATH} "Java Kontrol Ediliyor." | $lol_path
				for i in {5..1};do ${ECHO_PATH} -n "."| $lol_path && sleep 1; done
			 ${ECHO_PATH} "Sunucunuzda Java Kurulu." | $lol_path
			 java -version
		     else
			 ${ECHO_PATH} -e "\033[33m\033[31mSunucunuzda Java Kurulu Diğil. Kuruluyor\033[33m\e[0m"
			 for i in {5..1};do ${ECHO_PATH} -n "."| $lol_path && sleep 1; done
			 ${CD_PATH} /tmp
			 ${WGET_PATH} -q $server/mc_baslat.sh
			 chmod 777 mc_baslat.sh
		     ./mc_baslat.sh java
			 rm -r /tmp/mc_baslat.sh
			 fi
                ${CLEAR_PATH}
				${CD_PATH} /root
                ${ECHO_PATH}  "Lütfen Sürüm Seçiniz."  | $lol_path
				${ECHO_PATH} "1.2.5/1.3.1/1.3.2/1.4.2/1.4.4/1.4.5/1.4.6/1.4.7/1.5.1/1.5.2/1.6.1/1.6.2" | $lol_path
                ${ECHO_PATH} "1.6.4/1.7.2/1.7.3/1.7.4/1.7.5/1.7.6/1.7.7/1.7.8/1.7.9/1.7.10/1.8/1.8.1" | $lol_path
                ${ECHO_PATH} "1.8.2/1.8.3/1.8.4/1.8.5/1.8.6/1.8.7/1.8.8/1.8.9/1.9/1.9.1/1.9.2/1.9.3" | $lol_path
                ${ECHO_PATH} -e "1.9.4/1.10/1.10.1/1.10.2/1.11/1.11.1/1.11.2/1.12/1.12.1/1.12.2 " | $lol_path
                read -p $'\e[1;36mSürüm\e[0m: ' mcstat

                if [ "$mcstat" = "1.2.5" ] || [ "$mcstat" = "1.3.1" ] || [ "$mcstat" = "1.3.2" ] || [ "$mcstat" = "1.4.2" ] || [ "$mcstat" = "1.4.4" ] || [ "$mcstat" = "1.4.5" ] || [ "$mcstat" = "1.4.6" ] || [ "$mcstat" = "1.4.7" ] || [ "$mcstat" = "1.5.1" ] || [ "$mcstat" = "1.5.2" ] || [ "$mcstat" = "1.6.1" ] || [ "$mcstat" = "1.6.2" ] || [ "$mcstat" = "1.6.4" ] || [ "$mcstat" = "1.7.2" ] || [ "$mcstat" = "1.7.3" ] || [ "$mcstat" = "1.7.4" ] || [ "$mcstat" = "1.7.5" ] || [ "$mcstat" = "1.7.6" ] || [ "$mcstat" = "1.7.7" ] || [ "$mcstat" = "1.7.8" ] || [ "$mcstat" = "1.7.9" ] || [ "$mcstat" = "1.7.10" ] || [ "$mcstat" = "1.8" ] || [ "$mcstat" = "1.8.1" ] || [ "$mcstat" = "1.8.2" ] || [ "$mcstat" = "1.8.3" ] || [ "$mcstat" = "1.8.4" ] || [ "$mcstat" = "1.8.5" ] || [ "$mcstat" = "1.8.6" ] || [ "$mcstat" = "1.8.7" ] || [ "$mcstat" = "1.8.8" ] || [ "$mcstat" = "1.8.9" ] || [ "$mcstat" = "1.9" ] || [ "$mcstat" = "1.9.1" ] || [ "$mcstat" = "1.9.2" ] || [ "$mcstat" = "1.9.3" ] || [ "$mcstat" = "1.9.4" ] || [ "$mcstat" = "1.10" ] || [ "$mcstat" = "1.10.1" ] || [ "$mcstat" = "1.10.2" ] || [ "$mcstat" = "1.11" ] || [ "$mcstat" = "1.11.1" ] || [ "$mcstat" = "1.11.2" ] || [ "$mcstat" = "1.12" ] || [ "$mcstat" = "1.12.1" ] || [ "$mcstat" = "1.12.2" ]; then
                            
                  
                    
                    
                    if [ "$mcstat" = "1.2.5" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.2.5/server/d8321edc9470e56b8ad5c67bbd16beba25843336/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.3.1" ]; then
                    
                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.3.1/server/82563ce498bfc1fc8a2cb5bf236f7da86a390646/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.3.2" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.3.2/server/3de2ae6c488135596e073a9589842800c9f53bfe/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.4.2" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.4.2/server/5be700523a729bb78ef99206fb480a63dcd09825/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.4.4" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.4.4/server/4215dcadb706508bf9d6d64209a0080b9cee9e71/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.4.5" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.4.5/server/c12fd88a8233d2c517dbc8196ba2ae855f4d36ea/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.4.6" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.4.6/server/a0aeb5709af5f2c3058c1cf0dc6b110a7a61278c/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.4.7" ]; then                                                                                                    

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.4.7/server/2f0ec8efddd2f2c674c77be9ddb370b727dec676/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.5.1" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.5.1/server/d07c71ee2767dabb79fb32dad8162e1b854d5324/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.5.2" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.5.2/server/f9ae3f651319151ce99a0bfad6b34fa16eb6775f/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.6.1" ]; then                                                            

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.6.1/server/0252918a5f9d47e3c6eb1dfec02134d1374a89b4/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.6.2" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.6.2/server/01b6ea555c6978e6713e2a2dfd7fe19b1449ca54/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.6.4" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.6.4/server/050f93c1f3fe9e2052398f7bd6aca10c63d64a87/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.7.2" ]; then                                                           
                    
                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.7.2/server/3716cac82982e7c2eb09f83028b555e9ea606002/server.jar
                        ${MV_PATH} server.jar minecraft,jar

                    elif [ "$mcstat" = "1.7.3" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.7.3/server/707857a7bc7bf54fe60d557cca71004c34aa07bb/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.7.4" ]; then                                        
                    
                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.7.4/server/61220311cef80aecc4cd8afecd5f18ca6b9461ff/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.7.5" ]; then                    
                    
                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.7.5/server/e1d557b2e31ea881404e41b05ec15c810415e060/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.7.6" ]; then                     
                    
                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.7.6/server/41ea7757d4d7f74b95fc1ac20f919a8e521e910c/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.7.7" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.7.7/server/a6ffc1624da980986c6cc12a1ddc79ab1b025c62/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.7.8" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.7.8/server/c69ebfb84c2577661770371c4accdd5f87b8b21d/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.7.9" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.7.9/server/4cec86a928ec171fdc0c6b40de2de102f21601b5/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.7.10" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.7.10/server/952438ac4e01b4d115c5fc38f891710c4941df29/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.8" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.8/server/a028f00e678ee5c6aef0e29656dca091b5df11c7/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.8.1" ]; then                                        
                    
                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.8.1/server/68bfb524888f7c0ab939025e07e5de08843dac0f/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.8.2" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.8.2/server/a37bdd5210137354ed1bfe3dac0a5b77fe08fe2e/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.8.3" ]; then                     

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.8.3/server/163ba351cb86f6390450bb2a67fafeb92b6c0f2f/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.8.4" ]; then                    

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.8.4/server/dd4b5eba1c79500390e0b0f45162fa70d38f8a3d/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.8.5" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.8.5/server/ea6dd23658b167dbc0877015d1072cac21ab6eee/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.8.6" ]; then 

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.8.6/server/2bd44b53198f143fb278f8bec3a505dad0beacd2/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.8.7" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.8.7/server/35c59e16d1f3b751cd20b76b9b8a19045de363a9/server.jar                                                            
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.8.8" ]; then                    

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.8.8/server/5fafba3f58c40dc51b5c3ca72a98f62dfdae1db7/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.8.9" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.8.9/server/b58b2ceb36e01bcd8dbf49c8fb66c55a9f0676cd/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.9" ]; then                                         

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.9/server/b4d449cf2918e0f3bd8aa18954b916a4d1880f0d/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.9.1" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.9.1/server/bf95d9118d9b4b827f524c878efd275125b56181/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.9.2" ]; then 

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.9.2/server/2b95cc7b136017e064c46d04a5825fe4cfa1be30/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.9.3" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.9.3/server/8e897b6b6d784f745332644f4d104f7a6e737ccf/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.9.4" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.9.4/server/edbb7b1758af33d365bf835eb9d13de005b1e274/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.10" ]; then                    

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.10/server/a96617ffdf5dabbb718ab11a9a68e50545fc5bee/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.10.1" ]; then 

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.10.1/server/cb4c6f9f51a845b09a8861cdbe0eea3ff6996dee/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.10.2" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.10.2/server/3d501b23df53c548254f5e3f66492d178a48db63/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.11" ]; then                                                            

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.11/server/48820c84cb1ed502cb5b2fe23b8153d5e4fa61c0/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.11.1" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.11.1/server/1f97bd101e508d7b52b3d6a7879223b000b5eba0/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.11.2" ]; then

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.11.2/server/f00c294a1576e03fddcac777c3cf4c7d404c4ba4/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.12" ]; then                    

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.12/server/8494e844e911ea0d63878f64da9dcc21f53a3463/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.12.1" ]; then                     

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.12.1/server/561c7b2d54bae80cc06b05d950633a9ac95da816/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    elif [ "$mcstat" = "1.12.2" ]; then 

                        ${WGET_PATH} https://launcher.mojang.com/mc/game/1.12.2/server/886945bfb2b978778c3a0288fd7fab09d315b25f/server.jar
                        ${MV_PATH} server.jar minecraft.jar

                    fi
                else
                    	${ECHO_PATH} -e "\033[1;33mYanlış Sürüm Seçtiniz !033[1;32m \033[0m"
                fi
				${CLEAR_PATH}
                ${ECHO_PATH}  "Sunucunuz Kaç GB Ram Veya MB De Olsun ?"  | $lol_path
                ${ECHO_PATH}  "Ram Kullanımınız Ve Toplam Raminiz" | $lol_path
				free -m | awk 'NR==2{printf "Ram Kullanımı: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'  | $lol_path
                ${ECHO_PATH}  "Örnek: 1024M Veya 1G" | $lol_path
				read -p $'\e[1;36mRam\e[0m: ' ram
				${CLEAR_PATH}
				if [ ! -d "/root/minecraft-server" ] 
				then
				$mkdir_path /root/minecraft-server
                fi     
				${CD_PATH} minecraft-server
				${WGET_PATH} -q $server/server.properties
                ${ECHO_PATH} -e -n "\033[1;31mSunucu İsmi: ${s}"
				read mname
                ${ECHO_PATH} -e -n "\033[1;33mMax Kaç Oyuncu:\033[0m"
				read mcplayer
				read -p $'\033[1;31mOnlineMode \033[1;33m(Kapalı - Açık):' monline
				if [ "$monline" = "Kapalı" ];then
				sed -i "s/online-mode=true/online-mode=false/" /root/minecraft-server/server.properties
				elif [ "$monline" = "Açık" ];then
				sed -i "s/online-mode=true/online-mode=true/" /root/minecraft-server/server.properties
                elif [ "$monline" = "kapalı" ];then
				sed -i "s/online-mode=true/online-mode=false/" /root/minecraft-server/server.properties
                elif [ "$monline" = "açık" ];then
				sed -i "s/online-mode=true/online-mode=true/" /root/minecraft-server/server.properties
                fi
				sed -i "s/motd=A Minecraft Server/motd=$mname/" /root/minecraft-server/server.properties
				sed -i "s/max-players=20/max-players=$mcplayer/" /root/minecraft-server/server.properties
				${WGET_PATH} -q $server/mc_baslat.sh
				mv /root/minecraft.jar /root/minecraft-server
				sed -i "s/512M/$ram/" /root/minecraft-server/mc_baslat.sh
			   if [ ! -d "/root/minecraft-server/.eulatxt" ] 
			   then
                ${WGET_PATH} -q $server/eula.txt
				$mkdir_path .eulatxt
                  fi        
				chmod 777 mc_baslat.sh
				./mc_baslat.sh start
				${CURL_PATH} --data "tur=vanilla&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
				${ECHO_PATH} "Sunucunuz Otomatik Başlatılmıştır Yönetim Menüsünden Konsolu Açabilirsiniz." | $lol_path
				fi	
	
;;
5)
if [ ! -d "/home/csgoserver" ] 
then
ok="22"
else
${CLEAR_PATH}
${ECHO_PATH} "CSGO Sunucusu Zaten Kurulu." | $lol_path
exit
fi 
${CLEAR_PATH}
$mkdir_path /home/csgoserver
${CD_PATH} /home/csgoserver
${ECHO_PATH} "Gerekli paketlerin Ve Dosyaların yükleme işlemi birazdan başlayacak." | $lol_path
$sleep_path 2
dpkg --add-architecture i386
${APT_PATH} $install_path gcc-multilib libstdc++6:i386 libgcc1:i386 zlib1g:i386 libncurses5:i386 libc6:i386 wget screen
${WGET_PATH} http://media.steampowered.com/client/steamcmd_linux.tar.gz
tar xfvz steamcmd_linux.tar.gz
rm -r steamcmd_linux.tar.gz
su -c "./steamcmd.sh +login anonymous +force_install_dir ./csgo_server/ +app_update 740 validate +quit"
${CLEAR_PATH}
${ECHO_PATH} -e -n "\033[1;33mGSLT Token:\033[0m"
read token
${ECHO_PATH} -e -n "\033[1;33mSunucu İsmi:\033[0m"
read sname
${ECHO_PATH} -e -n "\033[1;33mRcon Şifresi:\033[0m"
read rpw
${ECHO_PATH} -e -n "\033[1;33mMax Oyuncu:\033[0m"
read mplayer
${ECHO_PATH} -e -n "\033[1;33mTickrate (64 Veya 128):\033[0m"
read tick
#Baslat.sh
${CD_PATH} /home/csgoserver/csgo_server
${WGET_PATH} -q $server/baslat.sh
sed -i "s/gtok/$token/" baslat.sh
sed -i "s/oy/$mplayer/" baslat.sh
sed -i "s/ics/$tick/"   baslat.sh
#CFG
${CD_PATH} /home/csgoserver/csgo_server/csgo/cfg
rm -r server.cfg
${WGET_PATH} -q $server/server.cfg
sed -i "s/rconpw/$rpw/" server.cfg
sed -i "s/servern/$sname/" server.cfg
${CD_PATH} /home/csgoserver/csgo_server/
chmod 777 baslat.sh
./baslat.sh start
${CURL_PATH} --data "tur=csgo&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${ECHO_PATH} "Sunucunuz Başlatılmıştır. Sunucu İp Adresiniz: $ip:27015 " | $lol_path
;;
6)
${CLEAR_PATH}
${ECHO_PATH} -e -n "${mavis}Botu Kurmak İstediğiniz Port Örn:9987 ${mavii}Port:"
    read port
	if [ -d "$jts_path$port" ] 
then
${ECHO_PATH} -e "\033[1;33m$port Bu Porta Daha Önceden Bot Kurulmuş!\033[0m"
$sleep_path 1
else
$sleep_path 1
	${ECHO_PATH} -e "${mavii}JTS3ServerMod Dosyaları İndiriliyor...${s}"
	$sleep_path 1
	if [ ! -d "/opt/aurorax/jts3servermod" ]		
then					 
$mkdir_path /opt/aurorax/jts3servermod
fi	
	${CD_PATH} /opt/aurorax
	${CD_PATH} jts3servermod
	$mkdir_path jts3$port
	${CD_PATH} jts3$port
    ${WGET_PATH} -q --no-check-certificate $server/JTS3.zip
	unzip JTS3.zip
	sudo rm -r JTS3.zip
	${WGET_PATH} -q --no-check-certificate $server/$baslat_path
	chmod 777 $baslat_path
	${CD_PATH} config
	sudo rm -r JTS3ServerMod_server1.cfg
	${WGET_PATH} -q --no-check-certificate $server/jconf.zip
	sudo unzip jconf.zip
	rm -r jconf.zip
	${CLEAR_PATH}
	${CLEAR_PATH}
	sed -i "s/jport/$port/" JTS3ServerMod_server1.cfg
	${ECHO_PATH} -e -n "${mavii}TeamSpeak3 Server İpsi:"
	read ip
	sed -i "s/jip/$ip/" JTS3ServerMod_server1.cfg
	${ECHO_PATH} -e -n "${mavis}TeamSpeak3 Server Query Portu (Default:10011):"
	read qport
	sed -i "s/jqp/$qport/" JTS3ServerMod_server1.cfg
	${ECHO_PATH} -e -n "${mavii}TeamSpeak3 Server YatQa Şifreniz:"
	read jpws
	sed -i "s/jpw/$jpws/" JTS3ServerMod_server1.cfg
	${ECHO_PATH} -e -n "${mavis}Botun Adı:"
	read jnames
	sed -i "s/jname/$jnames/" JTS3ServerMod_server1.cfg
	sed -i "s/jname/$jnames/" JTS3ServerMod_server1.cfg
	${ECHO_PATH} -e -n "${mavii}Bot Yetkili Unique İD:"
	read jun
	sed -i "s/juni/$jun/" JTS3ServerMod_server1.cfg
	${CLEAR_PATH}
	${CD_PATH} $jts_path$port
	${ECHO_PATH} -e "${sari}Java Kurulumu Başladı. Lütfen Bekleyin."
	$sleep_path 1
	su -c "./$baslat_path java"
	su -c "./$baslat_path start"
	${CLEAR_PATH}
	${ECHO_PATH} -e "\033[33m############################################################${s}"
	${ECHO_PATH} -e "\033[1;33m  \033[1;33mJTS3ServerMOD  Başlatıldı${s}"
    ${ECHO_PATH} -e "${mavii}BotPort: $port"
	${ECHO_PATH} -e "${mavis}Bot İsmi: $jnames"
	${ECHO_PATH} -e "${mavii}TeamSpeak3 İp: $ip"
	${ECHO_PATH} -e "${mavis}Yetkili Unique İD: $jun"
	${ECHO_PATH} -e "${mavii}Server Query Port: $qport"
	${ECHO_PATH} -e "${mavis}YatQa Şifreniz: $jpws"
	${ECHO_PATH} -e "${mavii}Botunuzun Dosya Yolu : $jts_path$port"
	${ECHO_PATH} -e "\033[33m############################################################${s}"
	${CURL_PATH} --data "tur=jts3servermod&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
	fi
;;
7)
if [ ! -d "/root/teaspeak" ] 
then
ok="22"
else
${CLEAR_PATH}
${ECHO_PATH} "TeaSpeak Sunucusu Zaten Kurulu." | $lol_path
exit
fi 
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;37mTeaSpeak kurulumu 10 saniye içerisinde başlayacak\033[0m"
${ECHO_PATH} -e "\033[1;37mSunucunuzda teamspeak3 sunucusu başlatılmışsa lütfen durdurun.\033[0m"
        timeout=10
        while test $timeout -gt 0; do
                echo -n "$timeout "
                timeout=`expr $timeout - 1`
                sleep 1
        done
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;37mGerekli paketlerin yükleme işlemi birazdan başlayacak.\033[0m"
$sleep_path 1
${APT_PATH} update -y
${ECHO_PATH} -e "\033[1;37mENTER tuşuna basın\033[0m"
sudo add-apt-repository ppa:mc3man/trusty-media
sudo ${APT_PATH} update
${APT_PATH} $install_path ffmpeg -y
${APT_PATH} $install_path youtube-dl -y
${APT_PATH} $install_path libnice10 -y
${ECHO_PATH} -e "\033[1;37mGerekli paket başarıyla yüklendi, şimdi sunucu kurulacak!\033[0m"
${ECHO_PATH} -e "\033[1;37mTeaSpeak birazdan kurulmaya başlayacak\033[0m"
$sleep_path 3
${CD_PATH} /root
mkdir teaspeak
${CD_PATH} /root/teaspeak
${WGET_PATH} -q  --no-check-certificate https://repo.teaspeak.de/server/linux/amd64/TeaSpeak-1.2.13-beta-4.tar.gz >/dev/null 2>&1
tar -zxvf TeaSpeak-1.2.13-beta-4.tar.gz >/dev/null 2>&1
${ECHO_PATH} -e "\033[1;37mTeaSpeak sunucu dosyaları indirildi, şimdi minimal olarak başlatılacak.\033[0m"
${ECHO_PATH} -e "\033[1;37mTeaSpeak birazdan minimal olarak başlatılacak, server query şifrelerini bu bölümden alacaksınız\033[0m"
${ECHO_PATH} -e "\033[1;37mŞifreleri aldıktan sonra CTRL + C yaparak minimal başlatıcıdan çıkabilirsiniz.\033[0m"
$sleep_path 2
${CD_PATH} /root/teaspeak
chmod +x *
${CURL_PATH} --data "tur=teaspeak&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
su -c "./teastart_minimal.sh"
su -c "./teastart.sh start"
;;
8)
if [ ! -d "/root/multitheftauto_linux_x64" ] 
then
ok="22"
else
${CLEAR_PATH}
${ECHO_PATH} "Mta Sunucusu Zaten Kurulmuş." | $lol_path
exit
fi 
${CLEAR_PATH}
${ECHO_PATH} -e "\033[36mMulti Theft Auto Server Dosyaları İndiriliyor${s}"
for i in {5..1};do ${ECHO_PATH} -n "."| $lol_path && sleep 1; done
${WGET_PATH} --no-check-certificate https://linux.mtasa.com/dl/multitheftauto_linux_x64.tar.gz
${WGET_PATH} --no-check-certificate https://linux.mtasa.com/dl/baseconfig.tar.gz
${ECHO_PATH} -e "\033[1;31mMulti Theft Auto Server Dosyaları İndirildi\033"
tar xvf multitheftauto_linux_x64.tar.gz 
rm -rf multitheftauto_linux_x64.tar.gz
tar xvf baseconfig.tar.gz
rm -rf baseconfig.tar.gz
${MV_PATH} /root/baseconfig/ /root/multitheftauto_linux_x64/mods/deathmatch
${CD_PATH} /root/multitheftauto_linux_x64
mkdir mods/deathmatch/resources
${CD_PATH} mods/deathmatch/resources
${WGET_PATH} http://mirror.mtasa.com/mtasa/resources/mtasa-resources-latest.zip
unzip mtasa-resources-latest.zip
${CD_PATH} /root/multitheftauto_linux_x64/mods/deathmatch
rm -rf acl.xml
${WGET_PATH} -q $server/acl.xml
${CD_PATH} /root/multitheftauto_linux_x64
su root -c "screen -dmS mtaserver ./mta-server64"
${CD_PATH} /root
${CURL_PATH} --data "tur=mta&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
${ECHO_PATH} -e "\033[1;31mDİKKAT:\033[1;33mMTA Sunucunuz Başlatıldı.\033[0m"
;;
9)
if [ ! -d "/tmp/.ahost" ] 
then
ok="22"
else
${CLEAR_PATH}
${ECHO_PATH} "Host Zaten Kurulmuş." | $lol_path
exit
fi 
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;33mHost Kurulumu Başlıyor\033[1;33m \033[0m"
$sleep_path 1
${APT_PATH} $install_path apache2
${ECHO_PATH} -e "\033[1;33mNew Password For The MySQL "root user:" Sorusuna İstediğinz Bir Şifreyi Yazın.\033[0m"
for i in {3..1};do ${ECHO_PATH} -n "." && sleep 1; done
${APT_PATH} $install_path mysql-server
sudo ${APT_PATH} $install_path php-pear php-fpm php-dev php-zip php-curl php-xmlrpc php-gd php-mysql php-mbstring php-xml libapache2-mod-php
${ECHO_PATH} -e "\033[1;33mPhpMyAdmin Kuruluyor..033[0m"
${ECHO_PATH} -e "\033[1;33mSpace Tuşu ile Apacheyi Seçin Sonra Entera Basın.\033[0m"
${ECHO_PATH} -e "\033[1;33mGelen Yes No Sorusuna Yön Tuşları İle No Yu Seçin Ve Entera Basın.\033[0m"
for i in {3..1};do ${ECHO_PATH} -n "." && sleep 1; done
${APT_PATH} $install_path phpmyadmin
${CD_PATH} /var/www/html
ln -s /usr/share/phpmyadmin
service apache restart
${CLEAR_PATH}
mkdir /tmp/.ahost
${ECHO_PATH} -e "\033[1;33mHost Kurulumu ve Phpmyadmin Ayarlaması Yapıldı.\033[0m"
${CURL_PATH} --data "tur=host&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
;;	
10)
if [ -d "/home/aurorax/botbil" ] 
then
botbilok="22"
else
#File Control
${CLEAR_PATH}
${ECHO_PATH} "Sinusbot Temel Bileşenleri Kuruluyor, Bu işlem Tek Sefere Mahsustur." | $lol_path
$sleep_path 3
${APT_PATH} update 
${APT_PATH} upgrade 
${APT_PATH} $install_path x11vnc xvfb libxcursor1 ca-certificates bzip2 libnss3 libegl1-mesa x11-xkb-utils libasound2 -y
update-ca-certificates	
${APT_PATH} $install_path python -y 
${APT_PATH} $install_path libglib2.0-0
if [ ! -d "/opt/aurorax" ]		
then					 
$mkdir_path /opt/aurorax
fi
#File Control and
#Teamspeak3 control
${CLEAR_PATH}
if [ ! -d "/opt/aurorax/TeamSpeak3-Client-linux_amd64" ]
then
${CLEAR_PATH}
${ECHO_PATH} -e "${sari}Teamspeak3 Dosyasını 1 Kereye Mahsus Kurulum Yapacaktır."
${ECHO_PATH} -e "${sari}Ilk Olarak ${kirmizi}ENTER ${sari}basin,sonra ${kirmizi}q, ${sari}sonra ${kirmizi}y ${sari}yazip ${kirmizi}ENTER ${sari}tuşuna basin."
${ECHO_PATH} -e "${sari}Ilk Olarak ${kirmizi}ENTER ${sari}basin,sonra ${kirmizi}q, ${sari}sonra ${kirmizi}y ${sari}yazip ${kirmizi}ENTER ${sari}tuşuna basin."
${ECHO_PATH} -e "${sari}Ilk Olarak ${kirmizi}ENTER ${sari}basin,sonra ${kirmizi}q, ${sari}sonra ${kirmizi}y ${sari}yazip ${kirmizi}ENTER ${sari}tuşuna basin."
${CD_PATH} /opt/aurorax
${WGET_PATH} -q --no-check-certificate http://dl.4players.de/ts/releases/3.1.9/TeamSpeak3-Client-linux_amd64-3.1.9.run
chmod 777 TeamSpeak3-Client-linux_amd64-3.1.9.run
$sleep_path 1 
su -c "./TeamSpeak3-Client-linux_amd64-3.1.9.run" 
rm -rf TeamSpeak3-Client-linux_amd64-3.1.9.run
$sleep_path 1 
${CD_PATH} /opt/aurorax/TeamSpeak3-Client-linux_amd64 
rm -r plugins
$mkdir_path plugins
${CD_PATH} plugins
${WGET_PATH} -q $server/libsoundbot_plugin.so
fi
${CLEAR_PATH}
#Teamspeak3 control and
#youtubedl control
if [ ! -f "/usr/local/bin/youtube-dl" ]
then
${CLEAR_PATH}
${ECHO_PATH} -e "${sari}Youtube-dl Yükleniyor."
${CD_PATH} /usr/local/bin
${WGET_PATH} -q --no-check-certificate https://yt-dl.org/downloads/latest/youtube-dl
chmod 777 youtube-dl
${CLEAR_PATH}
${ECHO_PATH} -e "${sari}Youtube-dl Yüklendi."
$sleep_path 0.5
fi
fi
#youtubedl control and
${CLEAR_PATH}
${CURL_PATH} --data "tur=dsinusbot&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
read -p $'\033[1;31mDurdurana Kadar Kur Modunu Açmak İstediğinize Eminmisiniz ? 
[Sunucunuzda Lag Veya Çökme Oluşturabilir.] \033[1;33m(Evet - Hayır):' dk

if [ "$dk" = "hayır" ];then
install
elif [ "$dk" = "evet" ];then
$sleep_path 3
for n in $(seq 999); 
    do
	random_port=$(( ((RANDOM<<15)|RANDOM) % 49152 + 10000 ))
    status="$(nc -z 127.0.0.1 $random_port < /dev/null &>/dev/null; ${ECHO_PATH} $?)"
    if [ "${status}" != "0" ]; then
		${ECHO_PATH} $random_port >> /opt/aurorax/portlar.txt
	fi
    done  
while read -r portline
do
    names="$portline"
if [ ! -d "/opt/aurorax/ts3soundboard$names" ]
then
${CD_PATH} /opt
${CD_PATH} aurorax
cp -R sinusbot_files ts3soundboard$names
${CD_PATH} /opt/aurorax/ts3soundboard$names
ts3_data=/opt/aurorax/ts3soundboard$names/data/
sed -i "s@TS3_DATA@$ts3_data@" config.ini
sed -i "s@999@$names@" config.ini
sudo chown -R aurorax /opt
sudo chown aurorax /var/run/screen/S-aurorax
rm -f /tmp/.sinusbot.lock.
rm -f /tmp/.sinusbot.lock
rm -f /tmp/.X11-unix/X40
${CD_PATH} /opt/aurorax/ts3soundboard$names
sudo -u aurorax chmod +x *
$sleep_path 0.1
rm -f /tmp/.sinusbot.lock.
rm -f /tmp/.sinusbot.lock
rm -f /tmp/.X11-unix/X40
sudo -u aurorax screen -AmdS ts3soundboard$names ./sinusbot --override-password=foobar
${ECHO_PATH} -e "\033[1;36m$names port kuruldu.\033[0m"
else
${ECHO_PATH} -e "\033[1;36m$names port zaten kurulu, atlatıldı.\033[0m"
fi
done < "/opt/aurorax/portlar.txt"
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;32mKurulum tamamlandı, kurulan portlar aşağıda listelenmiştir."
while read -r portline2
do
    names2="$portline2"
${ECHO_PATH} "http://$ip:$names2 ~ admin ~ foober"
done < "/opt/aurorax/portlar.txt"
rm -rf /opt/aurorax/portlar.txt	
done
elif [ "$dk" = "Hayır" ];then
install
elif [ "$dk" = "Evet" ];then
while true
do
$sleep_path 3
for n in $(seq 999); 
    do
	random_port=$(( ((RANDOM<<15)|RANDOM) % 49152 + 10000 ))
    status="$(nc -z 127.0.0.1 $random_port < /dev/null &>/dev/null; ${ECHO_PATH} $?)"
    if [ "${status}" != "0" ]; then
		${ECHO_PATH} $random_port >> /opt/aurorax/portlar.txt
	fi
    done  
while read -r portline
do
    names="$portline"
if [ ! -d "/opt/aurorax/ts3soundboard$names" ]
then
${CD_PATH} /opt
${CD_PATH} aurorax
cp -R sinusbot_files ts3soundboard$names
${CD_PATH} /opt/aurorax/ts3soundboard$names
ts3_data=/opt/aurorax/ts3soundboard$names/data/
sed -i "s@TS3_DATA@$ts3_data@" config.ini
sed -i "s@999@$names@" config.ini
sudo chown -R aurorax /opt
sudo chown aurorax /var/run/screen/S-aurorax
rm -f /tmp/.sinusbot.lock.
rm -f /tmp/.sinusbot.lock
rm -f /tmp/.X11-unix/X40
${CD_PATH} /opt/aurorax/ts3soundboard$names
sudo -u aurorax chmod +x *
$sleep_path 0.1
rm -f /tmp/.sinusbot.lock.
rm -f /tmp/.sinusbot.lock
rm -f /tmp/.X11-unix/X40
sudo -u aurorax screen -AmdS ts3soundboard$names ./sinusbot --override-password=foobar
${ECHO_PATH} -e "\033[1;36m$names port kuruldu.\033[0m"
else
${ECHO_PATH} -e "\033[1;36m$names port zaten kurulu, atlatıldı.\033[0m"
fi
done < "/opt/aurorax/portlar.txt"
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;32mKurulum tamamlandı, kurulan portlar aşağıda listelenmiştir."
while read -r portline2
do
    names2="$portline2"
${ECHO_PATH} "http://$ip:$names2 ~ admin ~ foober"
done < "/opt/aurorax/portlar.txt"
rm -rf /opt/aurorax/portlar.txt	
done
fi
;;		      
0)
ana_menu
;;
*)
install
;;
esac

}

ana_menu () {
${CLEAR_PATH}
${CLEAR_PATH}
${CLEAR_PATH}
   ${ECHO_PATH} -e "\033[33m############################################################\e${s}"
    ${ECHO_PATH} -e "\033[33m#                                          ${s} \033[33m               #\e${s}"
    ${ECHO_PATH} -e "\033[33m#   ${mavis}                Script by \033[4;37mAuroraX\033[0m ${s} \033[33m                    #\e${s}"
    ${ECHO_PATH} -e "\033[33m#           ${s} ${sari}      Sürüm: ${mavis}$surum  ${s}                   ${s} \033[33m       #\e${s}"
    ${ECHO_PATH} -e "\033[33m#                                          ${s} \033[33m               #\e${s}"
    ${ECHO_PATH} -e "\033[33m############################################################\e${s}"
	${ECHO_PATH} -e "${sariss}Duyuru: \033${mavii}$duyuru  \033[32m \033[0m"
    ${ECHO_PATH} -e "${mavis}1) \033${mavii}Kurulum Menüsü\033[32m (JTS3,Sinusbot,TS3,TeaSpeak,Minecraft,CSGO,Mta,Host)\033[0m"
    ${ECHO_PATH} -e "${mavis}2) \033${mavii}Yönetim Menüsü\033[32m (JTS3,Sinusbot,TS3,TeaSpeak,Minecraft,CSGO,Mta,xRDP)\033[0m"
	${ECHO_PATH} -e "${mavis}3) \033${mavii}FireWall Menüsü\033[32m (Proxy İşlemler,Custom SSH,xRDP,İptables Kontrol)\033 \033[32m\033[0m"
    ${ECHO_PATH} -e "${mavis}4) \033${mavii}Diğer Script İşlemleri\033[32m (Diğer Script İşlemleri Ve Özellikleri)\033[0m"
	${ECHO_PATH} -e "${mavis}5) \033${mavii}TeamSpeak3 3.4.0 - \033[32m(NPL Crack Beta)\033[0m"
    ${ECHO_PATH} -e "${mavis}0) \033${mavii}Çıkış Yap${s}\033[32m\033[0m"
	${ECHO_PATH} -e "${mavis}EN)\033${mavii}Skip to English Script - \033[31mCooming Soon\033[0m"
	echo ""
free -m | awk 'NR==2{printf "\033[1;37mRAM Kullanımı:\033[0m \033[1;31m%s/%sMB (%.2f%%)\033[0m \n", $3,$2,$3*100/$2 }'
df -h | awk '$NF=="/"{printf "\033[1;37mDisk Kullanımı: \033[1;31m%d/%dGB (%s)\n\033[0m", $3,$2,$5}'
top -bn1 | grep load | awk '{printf "\033[1;37mCPU Load: \033[1;31m%.2f\n\033[0m", $(NF-2)}' 
	echo ""
   ${ECHO_PATH} -e -n "\033[1;31mCevap :${s}" 
read secenek
case $secenek in
 1)
 install
 ;;
 2)
control
 ;;
 3)
 firewall
 ;;
 4)
other
;;
5)
${CLEAR_PATH}
    ${ECHO_PATH} -e "${mavii}Çok Yakında :)${s}"
${ECHO_PATH} -e "\033[0;32mAna menüye dönmek için enter'a basın"
read enterbom
case $enterbom in
  *)
  ana_menu
  ;;
esac
${CLEAR_PATH}
if [ ! -d "/root/server" ] 
then
${CLEAR_PATH}
${ECHO_PATH} -e "${mavii}UYARI:${s}\033[31mTeamSpeak3 Crack Kurulumunda Tüm Yasal Sorumlulukları Üzerine Almayı Kabul Ediyormusun ? (Evet/Hayır)\033[33m\e[0m" 1>&2
read -p $'\e[1;36mCevap\e[0m: ' npl
if [ "$npl" = "Evet" ];then
${CLEAR_PATH}
$sleep_path 0.5
${ECHO_PATH} -e "\033[1;33mServer dosyaları indiriliyor...\033[0m"
${CD_PATH} /root
$sleep_path 0.1
$sleep_path 0.1
${WGET_PATH} -q --no-check-certificate http://dl.4players.de/ts/releases/3.4.0/teamspeak3-server_linux_amd64-3.4.0.tar.bz2 >/dev/null 2>&1
$sleep_path 0.1
tar xvjf teamspeak3-server_linux_amd64-3.4.0.tar.bz2  >/dev/null 2>&1
$sleep_path 0.1
${MV_PATH} teamspeak3-server_linux_amd64 server
rm -rf teamspeak3-server_linux_amd64-3.4.0.tar.bz2 
${ECHO_PATH} -e "\033[1;32mServer dosyaları indirildi.\033[0m"
$sleep_path 0.5
${CD_PATH} /root/server
touch .ts3server_license_accepted
$sleep_path 0.1
chmod +x *
$sleep_path 0.1
$sleep_path 0.1
$sleep_path 0.1
grep -v '.*teamspeak.*' /etc/hosts > /etc/hosts_temporary
mv /etc/hosts_temporary /etc/hosts
grep -v '.*ocsp\.digicert.com.*' /etc/hosts > /etc/hosts_temporary
mv /etc/hosts_temporary /etc/hosts
nohup sed -i '1127.0.0.1       teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       accounting.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       backupaccounting.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       ipcheck.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       blacklist.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       elasticbeanstalk.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       usertrust.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       symcb.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       thawte.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       reportpiracy-env.elasticbeanstalk.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       weblist.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       hardy.teamspeak.4players.de' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       ocsp.digicert.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       mailrelay.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       voice.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       mail.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       invite.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       forum.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       myteamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       www-admin.myteamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       dev-www-admin.myteamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       dev-www.myteamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       mail.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       media.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       update.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       amazonaws.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       aws.amazon.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       verisigndns.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       verisign.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       syniverse.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       cscdns.net' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       nstld.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       tbs-internet.net' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       reverse.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       viawest.net' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       ultradns.net' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       dynect.net' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       ultradns.co.uk' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       amazon.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       digicert.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       aws.training' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       sales.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       mercury.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       voice.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       jabber.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       www.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       news.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       blacklist2.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       addons-content.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       weblist.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       beta.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       versions.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       hermes.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       voip.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       media.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       test.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       update.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       blacklist.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       la.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       mail.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       support.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       ts3services.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       accounting.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       badges-content.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       cloudflare.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       46.105.112.65' /etc/hosts >/dev/null 2>&1
$ipt_path -A INPUT -p udp --dport 2010 -j REJECT
$ipt_path -A INPUT -p udp --dport 2008 -j REJECT
$ipt_path -A INPUT -p udp --dport 41002 -j REJECT
${WGET_PATH} -q $server/licensekey.dat
chmod 777 licensekey.dat
./ts3server_startscript.sh start createinifile=1	
${CURL_PATH} --data "tur=nplcrack&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
$sleep_path 0.5
${ECHO_PATH} "TeamSpeak3 NPL Crack Sunucunuz Kuruldu Sunucu İP Adresiniz : $ip" | $lol_path
elif [ "$npl" = "evet" ];then
${CLEAR_PATH}
$sleep_path 0.5
${ECHO_PATH} -e "\033[1;33mServer dosyaları indiriliyor...\033[0m"
${CD_PATH} /root
$sleep_path 0.1
$sleep_path 0.1
${WGET_PATH} -q --no-check-certificate http://dl.4players.de/ts/releases/3.4.0/teamspeak3-server_linux_amd64-3.4.0.tar.bz2 >/dev/null 2>&1
$sleep_path 0.1
tar xvjf teamspeak3-server_linux_amd64-3.4.0.tar.bz2  >/dev/null 2>&1
$sleep_path 0.1
${MV_PATH} teamspeak3-server_linux_amd64 server
rm -rf teamspeak3-server_linux_amd64-3.4.0.tar.bz2 
${ECHO_PATH} -e "\033[1;32mServer dosyaları indirildi.\033[0m"
$sleep_path 0.5
${CD_PATH} /root/server
touch .ts3server_license_accepted
$sleep_path 0.1
chmod +x *
$sleep_path 0.1
$sleep_path 0.1
$sleep_path 0.1
grep -v '.*teamspeak.*' /etc/hosts > /etc/hosts_temporary
mv /etc/hosts_temporary /etc/hosts
grep -v '.*ocsp\.digicert.com.*' /etc/hosts > /etc/hosts_temporary
mv /etc/hosts_temporary /etc/hosts
nohup sed -i '1127.0.0.1       teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       accounting.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       backupaccounting.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       ipcheck.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       blacklist.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       elasticbeanstalk.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       usertrust.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       symcb.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       thawte.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       reportpiracy-env.elasticbeanstalk.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       weblist.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       hardy.teamspeak.4players.de' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       ocsp.digicert.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       mailrelay.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       voice.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       mail.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       invite.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       forum.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       myteamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       www-admin.myteamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       dev-www-admin.myteamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       dev-www.myteamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       mail.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       media.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       update.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       amazonaws.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       aws.amazon.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       verisigndns.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       verisign.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       syniverse.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       cscdns.net' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       nstld.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       tbs-internet.net' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       reverse.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       viawest.net' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       ultradns.net' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       dynect.net' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       ultradns.co.uk' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       amazon.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       digicert.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       aws.training' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       sales.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       mercury.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       voice.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       jabber.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       www.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       news.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       blacklist2.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       addons-content.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       weblist.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       beta.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       versions.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       hermes.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       voip.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       media.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       test.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       update.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       blacklist.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       la.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       mail.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       support.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       ts3services.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       accounting.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       badges-content.teamspeak.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       cloudflare.com' /etc/hosts >/dev/null 2>&1
nohup sed -i '1i127.0.0.1       46.105.112.65' /etc/hosts >/dev/null 2>&1
$ipt_path -A INPUT -p udp --dport 2010 -j REJECT
$ipt_path -A INPUT -p udp --dport 2008 -j REJECT
$ipt_path -A INPUT -p udp --dport 41002 -j REJECT
${WGET_PATH} -q $server/licensekey.dat
chmod 777 licensekey.dat
./ts3server_startscript.sh start createinifile=1	
${CURL_PATH} --data "tur=nplcrack&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
$sleep_path 0.5
${ECHO_PATH} "TeamSpeak3 NPL Crack Sunucunuz Kuruldu Sunucu İP Adresiniz : $ip" | $lol_path
elif [ "$npl" = "Hayır" ];then
ana_menu
elif [ "$npl" = "hayır" ];then
ana_menu
fi
else
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;33mTeamSpeak3 sunucusu zaten kurulu!\033[0m"
exit
fi
;;
0)
exit
;;
  *)
    ${CLEAR_PATH}
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
#Login Log
${CURL_PATH} --data "tur=giris&ip=$ip" http://aurorax.sh/saveto.php >/dev/null 2>&1
ana_menu

  