clear
source ./info.sh
echo "Enter"
echo -n "user name : "
read chusn
us=`grep -e "$chusn" $sys_f | awk '{print $2}'`
olp=`grep -e "$chusn" $sys_f | awk '{print $3}'`
if [ "$who" = "SUPER_USER" ] ; then
	if [ "$us" = "$chusn" ] ; then
		echo -n "New passwd : "
		read -s npass
		echo -n "Re-enter passwd : "
		read -s nnpass
		if [ "$npass" = "$nnpass" ] ; then
			exp="sed -ie '/$chusn/s/$olp\$/$npass/' $sys_f"	
			eval $exp
			unset exp
			echo "updated"
			sleep 1
		else
			echo "input dosen't match :( "
			sleep 1
		fi
		unset npass
		unset nnpass
	else
		echo "User not in list :("
	fi
else
	if [ "$cusn" = "$chusn" ]; then
		echo -n "New passwd : "
		read -s npass
		echo -n "Re-enter passwd : "
		read -s nnpass
		if [ "$npass" = "$nnpass" ] ; then
			exp="sed -ie '/$chusn/s/$olp\$/$npass/' $sys_f"	
			eval $exp
			unset exp
			echo "updated"
			sleep 1
		else
			echo "input dosen't match :( "
			sleep 1
		fi
		unset npass
		unset nnpass
	else
		echo "You are not $chusn"
		sleep 1
	fi
fi
unset olp
unset us
unset chusn
