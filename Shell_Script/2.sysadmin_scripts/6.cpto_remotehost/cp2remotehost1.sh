#!/bin/bash

a=`cat /home/ansadm/hosts`

for i in $a
do
	scp /home/ansadm/* root@$i:/tmp/
	if [ $? -eq 0 ]
	then
	echo $i files got copied
	echo
	else
	echo Files didnt get copied
	fi
done
	
