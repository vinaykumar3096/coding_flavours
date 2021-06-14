while [ TRUE ] 
do
	clear 
	source ./info.sh
	echo "welcome $who $cusn"
	echo "Enter choice"
	echo "1 for Change passwd"
	echo "2 for Adding User"
	echo "3 for Adding SUser"
	echo "4 for f-mod services"
	echo "e for exiting"
	read choice

	case $choice in
		1) source ./change_pass.sh ;;
		2) source ./add_user.sh ;;
		3) source ./add_user.sh ;;
		4) source ./start_fms.sh ;;
		e) clear; echo "exiting ... "; break ;;
		*) echo "Wrong Choice :("; sleep 1 ;;
	esac
	unset choice
done
