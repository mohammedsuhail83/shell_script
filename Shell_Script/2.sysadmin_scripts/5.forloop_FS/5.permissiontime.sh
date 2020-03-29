#!/bin/bash

total=`ls -l corona* | wc -l`

echo Total time to assign permission on the mentioned files is $total
echo

for i in corona.*
do
	echo Changing the permission of files
	chmod a+wx $i
	sleep 1
done
