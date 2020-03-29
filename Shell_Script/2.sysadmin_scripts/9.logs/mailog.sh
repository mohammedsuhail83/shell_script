#!/bin/bash

IT="root@target1.controller.ec2.internal"

if [ -s /tmp/filtered-messages ]
	then
	cat /tmp/filtered-messages | sort | uniq | mail -s "Error log messages" $IT
	rm /tmp/filtered-messages
	else
	echo No file exist
	fi
