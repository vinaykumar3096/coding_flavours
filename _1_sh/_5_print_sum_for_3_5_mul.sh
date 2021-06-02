#!/usr/bin/sh
#Q5 Modify the previous program such that only multiples of three or five are considered in the sum, 
#   e.g. 3, 5, 6, 9, 10, 12, 1f5 or n=17

echo -n "Please enter a number : "
read num
echo "enter 1 for sum of multiple of 3"
echo "enter 2 for sum of multiple of 5"
echo -n "choice : "
read choice
flag=0
ext=`echo $num | grep '^[0-9]\+' -o`
if [ "$num" = "$ext" ]; then
    sum=0
    i=0
    while [ $num -ge $i ]
    do
        flag=1
        if [ "$choice" = "1" ]; then
            check=`expr $i % 3`
            if [ $check -eq 0 ]; then
                sum=`expr $sum + $i`
            fi
            flag=0
        elif [ "$choice" = "2" ]; then
            check=`expr $i % 5`
            if [ $check -eq 0 ]; then
                sum=`expr $sum + $i`
            fi
            flag=0
        else
            echo "$choice is wrong choice"
            flag=1
            break
        fi
        i=`expr $i + 1`
    done
    if [ $num -eq 0 ]; then
        echo "num entered is $num"
    elif [ $flag -eq 0 ]; then
        echo "sum = $sum"
    fi
else
    echo "$num is not a valid numeric value!"
fi
