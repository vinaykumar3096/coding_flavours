#!/usr/bin/bash
if [ $# == 2 ] ; then
	check1=` echo $1 | grep -e "[.]" -o `
	check2=` echo $2 | grep -e "[.]" -o `
	if [ "$check1" = "." ] && [ "$check2" = "." ] ; then 
		files_list=`ls *$1`
	else
		echo "Wrong Argument $1 or $2"
		echo "INFO: file extention should be .<extention_name> "
		unset check1 check2
		exit 1
	fi
	unset check1 check2
	for name in $files_list;
	do
		ext=`echo $name | grep "^\w*." -o`
		ext=`echo $name | grep "^\w*" -o`
		ext=$ext$2
		mv $name $ext 
		echo "$name modified to! $ext"
		unset ext
	done
else
	echo "enter the file extentions as arguments"
	echo "Example ./modify_ext.sh .sh .bash"
fi

