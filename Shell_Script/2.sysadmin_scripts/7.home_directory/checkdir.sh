#!/bin/bash

cd /home
for dir in *
do
	chk=$(grep -c "/home/$dir" /etc/passwd)
	if [ $chk -ge 1 ]
	then
	echo $dir is assigned to a user
	#echo
	else
	echo $dir is not assigned to any user
	#echo	
	fi
done
