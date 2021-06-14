#!/usr/bin/sh

#===============================
#Made by - Vinay Kr. Ladwal
#Multi purpose software
#===============================

#===============================
init_s=init_prog.sh
#===============================

if [ -f ./init_prog.sh ]; then
	xterm -T "Friends DB Management Sys." -e "bash ./init_prog.sh"
else
	i=1
	while [ $i -le 5 ]
	do
		clear
		source ./info.sh
		echo "Corrupt File Systems!"
		echo "Error: Missing $init_s"
		echo "exiting in ($i)sec "
		i=`expr $i + 1`
		sleep 1
	done 
fi


