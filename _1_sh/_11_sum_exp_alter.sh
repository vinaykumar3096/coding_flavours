#!/usr/bin/sh
#Q11 Write a program that computes the sum of an alternating series 
#	 where each element of the series is an expression of the form 
#	 ((-1)^{k+1})/(2 * k-1) for each value of k from 1 to a million,
#    multiplied by 4. Or, in more mathematical notation

echo -n "Enter the Nth value : "
read nth_t
echo -n "Enter the multiplication Factor : "
read multi

sum=0
index=1
ext=`echo $nth_t | grep '^[0-9]*' -o`
ext1=`echo $multi | grep '^[0-9]*' -o`

if [ "$ext" = "$nth_t" ] && [ "$ext1" = "$multi"  ]; then
	while [ $index -le $nth_t ]
	do
		k=`echo "scale = 2; $index * $multi" | bc`
		val=`echo "scale = 2; ((-1)^($k+1))/(2*($k-1))" | bc`
		sum=`echo "scale = 2; $sum + $val" | bc`
		index=`expr $index + 1`
	done
	ext=`echo $sum | grep '^[-]\?[.]' -o`
	dp=`echo $sum | grep '[.][0-9]*' -o`
	if [ "$ext" = "-." ]; then
		echo "Sum of terms from 1 to k=$nth_t : -0$dp"
	elif [ "$ext" = "." ]; then
		echo "Sum of terms from 1 to k=$nth_t : 0$dp"
	else
		echo "Sum of terms from 1 to k=$nth_t : $sum"
	fi
else
	echo "either $nth_t or $multi is not a valid number!!!"
fi
