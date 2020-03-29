#Description: This script will add system inventory to database file

#!/bin/bash

echo "Please enter hostnme?"
read host
echo
	grep -q $host /home/ansadm/database
	if [ $? -eq 0 ]
	then
	echo "ERROR --Hostname $host already exist"
	echo
	exit 0
	fi

echo Please enter the IP address?
read IP
echo
	grep -q $IP /home/ansadm/database
	if [ $? -eq 0 ]
	then
	echo "ERROR -- IP $IP address already exist"
	echo
	exit 0
	fi

echo "Pleas enter the description"
read descri
echo

echo $host $IP $descri >> /home/ansadm/database
echo Host details has been added
