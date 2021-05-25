#!/usr/bin/sh
#Q4  Write a program that asks the user for a number n and prints the sum of the numbers 1 to n
echo -n "Please enter a number : "
read num
ext=`echo $num | grep '^[0-9]\+'`
if [ "$num" = "$ext" ]; then
    sum=0
    echo -n "sum of number from 1 to $num = "
    i=1
    while [ $num -ge $i ]
    do
        sum=`expr $sum + $i`
        i=`expr $i + 1`
    done
    echo $sum
else
    echo "$num is not a valid numeric value!"
fi
