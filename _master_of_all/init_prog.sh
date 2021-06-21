#==================================
sys_f=".sys_up"
login_status=0
who=USER
cusn=N
#==================================        
while [ true ]
do	
	if [ -f ./login.sh ] ; then
		source ./login.sh
	fi
	if [ "$login_status" = "1" ] ; then
		clear
		source ./info.sh
		if [ "$who" = "SUPER_USER" ] ; then
			source ./su_user.sh
		else
			source ./nml_user.sh
		fi
		clear
		echo -n "Want to continue [Y|n] : "
		read choice 
		if [ "$choice" = "n" ] ; then
			echo "Exiting...."
			unset sys_f
			unset login_ststus
			unset who
			unset cusn
			sleep 1
			break
		else 
			sys_f=".sys_up"
			login_ststus=0
			who=USER
			cusn=N
			echo "Restarting!"
			login_status=0
			sleep 1
		fi
		unset choice	
	elif [ "$login_status" = "2" ] ; then
		sys_f=".sys_up"
		login_ststus=0
		who=USER
		cusn=N
		echo "login failed"
		echo "try again!!!..."
		echo "wait for 3 sec"
		sleep 3
	fi
done
#==================================
