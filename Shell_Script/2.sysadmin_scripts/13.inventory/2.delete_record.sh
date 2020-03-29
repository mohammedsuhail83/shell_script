#!/bin/bash

echo "Enter the Hostname which needs to be deleted"
read host
echo "Enter the IP address of $host"
read IP
echo

grep -qE "$host|$IP" /home/ansadm/database
	if [ $? -eq 0 ]
	then
	echo
	sed -i '/'$host'/d' /home/ansadm/database
	echo "$host record has been deleted"
	else
	echo "Record doesnt exist"
	fi 
 
