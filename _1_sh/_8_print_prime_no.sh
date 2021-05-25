#!/usr/bin/sh
#Q8  Write a program that prints all prime numbers. (Note: if your programming language does not support 
#    arbitrary size numbers, printing all primes up to the largest number you can easily represent is fine too.)
echo -n "Please enter a number : "
read num
ext=`echo $num | grep '^[0-9]\+'`
if [ "$num" = "$ext" ]; then
    if [ $num -le 2 ]; then
        echo "1, "
    elif [ $num -eq 3 ]; then
        echo "1, 3, "
    else
        echo -n "1, 3, "
        i=4
        while [ $num -ge $i ]
        do
            j=2
            flag=1
            c=`expr $i / 2`
            while [ "$c" -ge "$j" ]
            do
                flag=1
                d=`expr $i % $j`
                if [ "$d" = "0" ]; then
                    flag=0
                    break
                fi
                j=`expr $j + 1`
            done
            if [ $flag -eq 1 ]; then
                echo -n "$i, "
            fi
            i=`expr $i + 1`
        done
        echo ""
    fi
else
    echo "$num is not a valid numeric value!"
fi
