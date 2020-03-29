#!/bin/bash

clear		#this will clear the screen before execution

if [ -e /home/ansadm/ansible.cfg ]
then 
	echo "File exist"
else
	echo "File doesnt exist in the given path"
fi
