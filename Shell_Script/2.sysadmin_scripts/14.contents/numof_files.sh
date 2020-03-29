#Description: This script will check & count number of files in the folder

#!/bin/bash

cd /home/ansadm/folder/
a=`ls -l | wc -l`

for i in $a
do
if [[ $i -ge 10 ]]
then
echo There are more than 10 files
echo There are `ls -l | wc -l` Files in the folder
else
echo There are less than 10 file
echo There are `ls -l | wc -l` Files in the folder
fi
done

