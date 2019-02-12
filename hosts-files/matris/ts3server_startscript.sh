#!/bin/sh
# Copyright (c) 2010 TeamSpeak Systems GmbH
# All rights reserved

COMMANDLINE_PARAMETERS="${2}" #add any command line parameters you want to pass here
D1=$(readlink -f "$0")
BINARYPATH="$(dirname "${D1}")"
cd "${BINARYPATH}"
LIBRARYPATH="$(pwd)"
BINARYNAME="ts3server"

case "$1" in
	start)
		if [ -e ts3server.pid ]; then
			if ( kill -0 $(cat ts3server.pid) 2> /dev/null ); then
				echo "Sunucu zaten açık."
				exit 1
			else
				echo "ts3server.pid bulundu, fakat sunucu açık değil."
				echo "Detaylar için log dosyasını inceleyin."
				rm ts3server.pid
			fi
		fi
		if [ "${UID}" = "0" ]; then
			echo Root İle Açma Kardeşim
			c=1
			while [ "$c" -le 10 ]; do
				echo -n "!"
				sleep 1
				c=$(($c+1))
			done
			echo "!"
		fi
		su root -c "echo -e '\033[1;33mTeamSpeak 3 Server Başlatılıyor\033[0;33m'"
		if [ -e "$BINARYNAME" ]; then
			if [ ! -x "$BINARYNAME" ]; then
				echo "${BINARYNAME} çalıştırılamıyor, tekrar ayarlamayı deneyin."
				chmod u+x "${BINARYNAME}"
			fi
			if [ -x "$BINARYNAME" ]; then
				export LD_LIBRARY_PATH="${LIBRARYPATH}:${LD_LIBRARY_PATH}"					
				"./${BINARYNAME}" ${COMMANDLINE_PARAMETERS} inifile=ts3server.ini > /dev/null &
 				PID=$!
				ps -p ${PID} > /dev/null 2>&1
				if [ "$?" -ne "0" ]; then
					su root -c "echo -e '\033[1;33mTeamSpeak 3 Server başlatılamadı.\033[0;33m'"
				else
					echo $PID > ts3server.pid
					su root -c "echo ''"
					su root -c "echo -e '\033[1;36mServer başlatıldı.\033[0m'"
				fi
			else
				echo "${BINARNAME} çalıştırılamıyor, TeamSpeak 3 Server başlatılamaz."
			fi
		else
			echo "binary bulunamadı, iptal ediliyor."
			exit 5
		fi
	;;
	stop)
		if [ -e ts3server.pid ]; then
			su root -c "echo -e '\033[1;33mTeamSpeak 3 Server durduruluyor.\033[0m'"
			echo " "
			if ( kill -TERM $(cat ts3server.pid) 2> /dev/null ); then
				c=1
				while [ "$c" -le 300 ]; do
					if ( kill -0 $(cat ts3server.pid) 2> /dev/null ); then
						echo -n "."
						sleep 1
					else
						break
					fi
					c=$(($c+1)) 
				done
			fi
			if ( kill -0 $(cat ts3server.pid) 2> /dev/null ); then
				echo "Server temiz kapatılmıyor! Server çökebilir."
				kill -KILL $(cat ts3server.pid)
			else
				su root -c "echo -e '\033[1;33mDurdurma işlemi tamamlandı.\033[0m'"
			fi
			rm ts3server.pid
		else
			echo "Server durdurulamadı. (ts3server.pid eksik.)"
			exit 7
		fi
	;;
	restart)
		$0 stop && $0 start ${COMMANDLINE_PARAMETERS} || exit 1
	;;
	status)
		if [ -e ts3server.pid ]; then
			if ( kill -0 $(cat ts3server.pid) 2> /dev/null ); then
				su root -c "echo -e 'Server şuan açık.'"
			else
				su root -c "echo -e 'Server çökmüş gibi duruyor.'"
			fi
		else
			su root -c "echo -e 'Server şuan açık değil. Lütfen start komutu verin.'"
		fi
	;;
	*)
		su root -c "echo -e '\033[1;33mYanlış komut. Aşağıdakilerden birini kullanın:\033[0;33m '"
		su root -c "echo -e '\033[1;36mstart ~ stop ~ restart ~ status\033[0;33m '"
		exit 0
esac
exit 0

