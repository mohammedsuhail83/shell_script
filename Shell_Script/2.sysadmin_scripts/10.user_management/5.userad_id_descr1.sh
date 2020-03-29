## description: This script will create a useraccount by adding the
##		description, UID & check for any errors.
## if [ $yun == y ] (Here == is used becasue we are validating 
## the Alphabets/letters not integers)

#!/bin/bash

echo "Please enter the username?"
read u

grep -q $u /etc/passwd
	if [ $? -eq 0 ]
	then
	echo "$u account already exist"
	echo "Please provide new name"
	exit 0
	fi

echo "Please enter the description for useraccount"
read d
echo

echo "Do you want enter userID (y/n)?"
read yun
echo
	if [ $yun == y ]
	then
	echo "Enter the userid for $u"
	read uid
	
grep -q $uid /etc/passwd
	if [ $? -eq 0 ]
	then
	echo "--Error: $uid already exist, please use diff userid"
	echo
	exit 0

	else
	useradd $u -c "$d" -u $uid
	echo "$u account has been created"
	fi

	elif [ $yun == n ]
	then
	echo "No worries the account will be created"
	useradd $u -c "$d" 
	echo "$u account has been created"
	fi
