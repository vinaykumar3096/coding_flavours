#==================================
sys_f=.sys_up
login_status=0
who=USER
cusn=N
#==================================        
while [ true ]
do	
	if [ -f ./login.sh ]; then
		source ./login.sh
	fi
	if [ "$login_status" = "1" ]; then
		clear
		source ./info.sh
		echo "welcome $who $cusn"
		if [ "$who" = "SUPER_USER" ] ; then
			source ./su_user.sh
		else
			source ./nml_user.sh
		fi
		sleep 3
		break
	elif [ "$login_status" = "2" ]; then
		echo "login failed"
		echo "try again!!!..."
		echo "wait for 3 sec"
		sleep 3
	fi
done
#==================================
