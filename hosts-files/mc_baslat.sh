#!/bin/sh

ram="512M"

installJava() {
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

	if which java >/dev/null 2>&1 ; then
		echo "Java Yüklendi."
		java -version
	else
		echo "Java run time Yüklenemiyor!"
		echo "Javayı Manuel Kur ./mc_baslat.sh java"
		exit 6
	fi
}

case "$1" in
	java)
	installJava
	;;
	start)
	cd /root/minecraft-server
	su root -c "screen -A -m -d -S mcserver java -Xmx$ram -jar minecraft.jar -o false"
	;;
	stop)
	su root -c "screen -S mcserver -X quit"
	;;
	restart)
		$0 stop && $0 start || exit 1
		;;
		manuel)
		java -Xmx$ram -jar minecraft.jar -o false
	;;
	*)
		echo "Kullanimi: ${0} {start|stop|restart|manuel|java}"
		exit 2
esac
exit 0
