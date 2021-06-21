#!/usr/bin/bash
if [ $# == 2 ] ; then
	mkdir -p modi
	files_list=`ls *$1`
	for name in $files_list;
	do
		ext=`echo $name | grep "^\w*." -o`
		ext=`echo $name | grep "^\w*" -o`
		ext=$ext$2
		mv $name ./modi/$ext 
		echo "$name modified to! $ext"
	done
else
	echo "enter the file extentions as arguments"
	echo "Example ./modify_ext.sh .sh .bash"
	echo ".sh existing extention"
	echo ".bash replaced extention"
fi

