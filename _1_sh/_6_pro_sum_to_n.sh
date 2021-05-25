#!/usr/bin/sh
#Q6  Write a program that asks the user for a number n and gives them the possibility to choose 
#    between computing the sum and computing the product of 1,…,n.

echo -n "Please enter a number : "
read num
echo "enter 1 for product"
echo "enter 2 for sum "
echo -n "choice : "
read choice
flag=0
ext=`echo $num | grep '^[0-9]\+'`
if [ "$num" = "$ext" ]; then
    i=1
    sum=0
    pro=1
    while [ $num -ge $i ]
    do
        flag=1
        if [ "$choice" = "1" ]; then
            pro=`expr $pro \* $i`
            flag=0
        elif [ "$choice" = "2" ]; then
            sum=`expr $sum + $i`
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
        if [ "$choice" = "1" ]; then
            echo "product = $pro"
        elif [ "$choice" = "2" ]; then
            echo "sum = $sum"
        fi
    fi
else
    echo "$num is not a valid numeric value!"
fi