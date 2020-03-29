#!/bin/bash


echo "Please Enther the username?"
read u

grep -q $u /etc/passwd
	if [ $? -eq 0 ]
	then
	echo "$u user already exist"
	echo "Please provide other name"
	exit 0
	fi

echo "Please provide the description"
read d

useradd $u -c "$d"
echo "$u account  has been created with description"
