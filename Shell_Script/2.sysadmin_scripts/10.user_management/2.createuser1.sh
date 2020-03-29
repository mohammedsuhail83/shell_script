# description: This script crates new user
# note: It will throw error if we try to create an existing user

#!/bin/bash

echo "Please provide the username?"
read u

grep -q $u /etc/passwd
	if [ $? -eq 0 ]
	then
	echo --Error Username already exist
	echo Please choose another name
	echo
	else
	useradd $u
	echo "$u account has been created"
fi
