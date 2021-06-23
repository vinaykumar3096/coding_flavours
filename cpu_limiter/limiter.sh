check1=`echo $2 | grep -e "^[0-9]*" -o`
if [ -n $1 ] && [ -n $check ] || [ "$2" = " " ] ; then
	pro=`ps -e | grep $1 -o`
	check2=`echo $pro | awk '{print $1}'`
	if [ "$1" = "$check2" ] && [ "$2" = "$check1" ] ; then
		pid=`ps -e | grep $1 | grep -e "[0-9]\+\s?" -o`
		pid=`echo $pid | sed -e 's/\s?//g'`
		cpulimit -c 2 -l $2 -p $pid &
	else
		echo "no such process or wrong argument"
		echo "source limiter.sh [ps_name] [percentage_util]"
	fi
else
	echo "argument missing!"
	echo "source limiter.sh [ps_name] [percentage_util]"
fi
unset check2
unset check1
unset pro
