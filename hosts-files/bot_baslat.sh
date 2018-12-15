#!/bin/sh


JAVA_COMMANDLINE_PARAMETERS=""           
JTS3SERVERMOD_COMMANDLINE_PARAMETERS=""  
BINARYPATH="$(pwd)"                      


cd "${BINARYPATH}"
BINARYNAME="JTS3ServerMod.jar"
ROOTUID="0"

installJava() {
	if which zypper >/dev/null 2>&1 ; then
		if ! zypper info java-1_9_0-openjdk-headless | grep "package 'java-1_9_0-openjdk-headless' not found." >/dev/null 2>&1 ; then
			echo "Installing package java-1.9.0-openjdk-headless, please wait some minutes..."
			zypper --non-interactive --quiet install java-1_9_0-openjdk-headless
		elif ! zypper info java-1_8_0-openjdk-headless | grep "package 'java-1_8_0-openjdk-headless' not found." >/dev/null 2>&1 ; then
			echo "Installing package java-1.8.0-openjdk-headless, please wait some minutes..."
			zypper --non-interactive --quiet install java-1_8_0-openjdk-headless
		elif ! zypper info java-1_7_0-openjdk-headless | grep "package 'java-1_7_0-openjdk-headless' not found." >/dev/null 2>&1 ; then
			echo "Installing package java-1.7.0-openjdk-headless, please wait some minutes..."
			zypper --non-interactive --quiet install java-1_7_0-openjdk-headless
		elif ! zypper info java-1_6_0-openjdk-headless | grep "package 'java-1_6_0-openjdk-headless' not found." >/dev/null 2>&1 ; then
			echo "Installing package java-1.6.0-openjdk-headless, please wait some minutes..."
			zypper --non-interactive --quiet install java-1_6_0-openjdk-headless
		fi
	elif which dnf >/dev/null 2>&1 ; then
		if dnf info java-1.9.0-openjdk-headless >/dev/null 2>&1 ; then
			echo "Installing package java-1.9.0-openjdk-headless, please wait some minutes..."
			dnf -y -q install java-1.9.0-openjdk-headless
		elif dnf info java-1.8.0-openjdk-headless >/dev/null 2>&1 ; then
			echo "Installing package java-1.8.0-openjdk-headless, please wait some minutes..."
			dnf -y -q install java-1.8.0-openjdk-headless
		elif dnf info java-1.7.0-openjdk-headless >/dev/null 2>&1 ; then
			echo "Installing package java-1.7.0-openjdk-headless, please wait some minutes..."
			dnf -y -q install java-1.7.0-openjdk-headless
		elif dnf info java-1.6.0-openjdk-headless >/dev/null 2>&1 ; then
			echo "Installing package java-1.6.0-openjdk-headless, please wait some minutes..."
			dnf -y -q install java-1.6.0-openjdk-headless
		fi
	elif which yum >/dev/null 2>&1 ; then
		if yum info java-1.9.0-openjdk-headless >/dev/null 2>&1 ; then
			echo "Installing package java-1.9.0-openjdk-headless, please wait some minutes..."
			yum -y -q install java-1.9.0-openjdk-headless
		elif yum info java-1.8.0-openjdk-headless >/dev/null 2>&1 ; then
			echo "Installing package java-1.8.0-openjdk-headless, please wait some minutes..."
			yum -y -q install java-1.8.0-openjdk-headless
		elif yum info java-1.7.0-openjdk-headless >/dev/null 2>&1 ; then
			echo "Installing package java-1.7.0-openjdk-headless, please wait some minutes..."
			yum -y -q install java-1.7.0-openjdk-headless
		elif yum info java-1.6.0-openjdk-headless >/dev/null 2>&1 ; then
			echo "Installing package java-1.6.0-openjdk-headless, please wait some minutes..."
			yum -y -q install java-1.6.0-openjdk-headless
		fi
	elif which apt-get >/dev/null 2>&1 ; then
		if apt-cache show openjdk-9-jre-headless >/dev/null 2>&1 ; then
			echo "Installing package openjdk-9-jre-headless, please wait some minutes..."
			apt-get -qq install openjdk-9-jre-headless > /dev/null
		elif apt-cache show openjdk-8-jre-headless >/dev/null 2>&1 ; then
			echo "Installing package openjdk-8-jre-headless, please wait some minutes..."
			apt-get -qq install openjdk-8-jre-headless > /dev/null
		elif apt-cache show openjdk-7-jre-headless >/dev/null 2>&1 ; then
			echo "Installing package openjdk-7-jre-headless, please wait some minutes..."
			apt-get -qq install openjdk-7-jre-headless > /dev/null
		elif apt-cache show openjdk-6-jre-headless >/dev/null 2>&1 ; then
			echo "Installing package openjdk-6-jre-headless, please wait some minutes..."
			apt-get -qq install openjdk-6-jre-headless > /dev/null
		fi
	fi
	
	if which java >/dev/null 2>&1 ; then
		echo "Java baÅŸarÄ±yla yÃ¼klendi:"
		java -version
	else
		echo "Java run time ortamÄ± yÃ¼klenemiyor!"
		echo "LÃ¼tfen JavanÄ±n manuel olarak kurulmasÄ±nÄ± saÄŸlamak iÃ§in oku.txt yi aÃ§Ä±nÄ±z."
		exit 6
	fi
}

case "$1" in
	java)
		if which java >/dev/null 2>&1 ; then
			echo "Java zaten kurulmus:"
			java -version
		else
			if [ "$(id -u)" -ne "$ROOTUID" ] ; then
				echo "Javanın Otomatik Kuruluma Başlaması için Root Yetkisi Gerekli."
				echo "Javanın EL İle Yüklenmesi İçin bot_baslat.sh java olarak kurabilirisinz"
				exit 6
			else
				read -p "Javayi Yüklemek İstiyormusunuz (y/n) " yn
				case $yn in
					[Yy]* ) installJava; break;;
					* ) echo "Aborted!"; exit 6;;
				esac
			fi
		fi
	;;
	start)
		if ! which java >/dev/null 2>&1 ; then
			echo "JTS3ServerMod'un Ã§alÄ±ÅŸtÄ±rÄ±lmasÄ± iÃ§in JavanÄ±n kurulu olmasÄ± gerekir!"
			echo "JavanÄ±n otomatik kurulumunu baÅŸlatmak iÃ§in bu komut dosyasÄ±nÄ± root olarak java deÄŸiÅŸkeniyle baÅŸlatÄ±nÄ±z:"
			echo "$0 java"
			echo "JavanÄ±n el ile yÃ¼klenmesi iÃ§in oku.txt de yazanlarÄ± yapÄ±nÄ±z."
			exit 6
		fi
		if [ "$(id -u)" -eq "$ROOTUID" ] ; then
			echo "Güvenlik nedeniyle, JTS3ServerMod'u root olarak Baslatmayi tercih ediyoruz!"
		fi
		if [ -e jts3servermod.pid ]; then
			if ( kill -0 $(cat jts3servermod.pid) 2> /dev/null ); then
				echo "JTS3ServerMod zaten Açik, yeniden Baslatmayi deneyin veya durdurun!"
				exit 1
			else
				echo "Jts3servermod.pid bulundu, ancak hiçbir bot Baslatılamadi. Muhtemelen daha Önce Baslatıldı Yadak Çöktü"
				echo "Lütfen ayrıntılar için log dosyasını kontrol edin."
				rm -f jts3servermod.pid
			fi
		fi
		echo "Bot Baslatılıyor..."
		if [ -e "$BINARYNAME" ]; then
			java ${JAVA_COMMANDLINE_PARAMETERS} -jar ${BINARYNAME} ${JTS3SERVERMOD_COMMANDLINE_PARAMETERS} > /dev/null &
			PID=$!
			ps -p ${PID} > /dev/null 2>&1
			if [ "$?" -ne "0" ]; then
				echo "Bot baÅŸlatÄ±lamadÄ±!"
			else
				echo $PID > jts3servermod.pid
				echo "Bot Baslatildi, Lütfen ayrıntılar için log dosyasını kontrol edin!"
			fi
		else
			echo "Dosya bulunamadi $BINARYNAME, durduruluyor!"
			exit 5
		fi
	;;
	stop)
		if [ -e jts3servermod.pid ]; then
			echo -n "Bot durduruluyor.."
			if ( kill -TERM $(cat jts3servermod.pid) 2> /dev/null ); then
				c=1
				while [ "$c" -le 120 ]; do
					if ( kill -0 $(cat jts3servermod.pid) 2> /dev/null ); then
						echo -n "."
						sleep 1
					else
						break
					fi
					c=$(($c+1)) 
				done
			fi
			if ( kill -0 $(cat jts3servermod.pid) 2> /dev/null ); then
				echo "Botu standart olarak durdurmuyor Çalisiyoruz!"
				kill -KILL $(cat jts3servermod.pid)
			else
				echo "Bitti"
			fi
			rm -f jts3servermod.pid
		else
			echo "Bot Baslatilamıyor (jts3servermod.pid dosyasi eksik)!"
			exit 7
		fi
	;;
	restart)
		$0 stop && $0 start || exit 1
	;;
	status)
		if [ -e jts3servermod.pid ]; then
			if ( kill -0 $(cat jts3servermod.pid) 2> /dev/null ); then
				echo "Bot Açık!"
			else
				echo "Bot Çökmüş Gibi Duruyor!"
			fi
		else
			echo "Bot Baslatılamıyor (jts3servermod.pid dosyasi eksik)!"
		fi
	;;
	*)
		echo "Kullanimi: ${0} {start|stop|restart|status|java}"
		exit 2
esac
exit 0
