#!/usr/bin/sh
#list to keep file name already moved
fmod=""
if [ $# -eq 1 ] ; then
	#extracting file names
	_data=`grep "$1" * | grep -e "\w*[.]\?\w*[:]" -o`
	mkdir -p ./error
	#itterating through each file name
	for name in $_data ;
	do
		fname=`echo $name | sed -e 's/[:]//'`
		check=`echo $fmod | grep "$fname" -o`
		#checking that if the file was already moved or not
		#if not if works add the file name to list 
		#and moves it to directory names error
		if [ "$check" != "$fname" ] ; then
			fmod="$fmod $fname"
			echo $fname
			mv $fname ./error/
		fi
	done
else
	echo "give keyword as argument"
fi

