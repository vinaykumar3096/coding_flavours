while [ TRUE ] 
do
	clear 
	source ./info.sh
	echo "welcome $who $cusn"
	echo "Enter choice"
	echo "1 for Change passwd"
	echo "2 for f-mod services"
	echo "e for exiting"
	read choice

	case $choice in
		1) source ./change_pass.sh ;;
		2) source ./start_fms.sh ;;
		e) clear; echo "exiting ... "; break ;;
		*) echo "Wrong Choice :("; sleep 1 ;;
	esac
	unset choice
done
