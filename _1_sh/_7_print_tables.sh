#!/usr/bin/sh
#Q7  Write a program that prints a multiplication table for numbers up to 12.

num=12
i=1
while [ $num -ge $i ]
do
    j=1
    while [ 10 -ge $j ]
    do
        echo "$i x $j\t= `expr $i \* $j`"
        j=`expr $j + 1`
    done
    i=`expr $i + 1`
    echo "\n"
done