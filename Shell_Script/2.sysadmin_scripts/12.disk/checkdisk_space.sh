#!/bin/bash

a=`df -h | egrep -v "tmpfs|devtmpfs" | awk '{print $5}' | cut -d'%' -f1`

for i in $a
do
	if [[ $i -ge 70 ]]
	then
	echo Disk space is above threshold value `df -h | grep $i`
	fi
done
