#!/usr/bin/sh
#Q9  Write a guessing game where the user has to guess a secret number. After every guess the program 
#    tells the user whether their number was too large or too small. At the end the number of tries 
#    needed should be printed. It counts only as one try if they input the same number multiple times consecutively.

snum=71
echo $snum
num=0
trial=10
while [ $smun -gt $num ] || [ $snum -lt $num ]
do
    echo -n "please enter a number : "
    read num
    if [ $num -gt $snum ]; then
        echo "too large"
    elif [ $num -lt $snum ]; then
        echo "too small"
    fi
    match=`echo $list | grep $num`
    if [ "$num" = "$match" ]; then
        echo "again same number"
        echo $list
    else
        list=`echo "$list $num"`
        trial=`expr $trial - 1`
    fi
    if [ $trial -eq 0 ]; then
        break
    fi
done
if [ ! "$smun" = "$num" ]; then
    echo "congrats the secret number was $snum"
else
    echo "Sorry, you failed "
    echo "$trial trial(s) left"
    echo "secret number was $snum"
fi