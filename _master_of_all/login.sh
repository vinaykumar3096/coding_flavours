clear
source ./info.sh
echo "login system..."
echo "Enter"
echo -n "user name : "
read cusn
us=`grep -e "$cusn" $sys_f | awk '{print $2}'`
if [ "$us" = "$cusn" ]; then
	echo -n ""
else
	echo "user not in list!"
	echo "ask admin to add a user"
	sleep 2 
	return
fi
i=3
while [ $i -gt 0 ]
do
	echo -n "password : "
	read -s pass
	if [ -f $sys_f ]; then
		check=`grep -e "$cusn" $sys_f | awk '{print $3}'`
		who=`grep -e "$cusn" $sys_f | awk '{print $1}'`
		if [ "$pass" = "$check" ]; then
			echo ""
			echo "user $cusn verified !"
			sleep 1
			login_status=1
			break
		else
			echo ""
			echo "wrong pass"
			i=`expr $i - 1`
			echo "$i trial left"
			login_status=2
		fi
	else
		echo "pass file dosen't exist"
		sleep 3
		exit	
	fi
done
