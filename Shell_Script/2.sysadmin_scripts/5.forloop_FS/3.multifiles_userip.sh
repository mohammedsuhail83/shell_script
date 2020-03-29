###################################################
###  Seq will help in reading files one by one  ###
###################################################


#!/bin/bash

echo Enter the number of files which needs to be created
read a
echo
echo Enter the name from which the file should begin
read b

for i in $(seq 1 $a)
do
	touch $b.$i
done
