##### -fn0: will look for latest incoming messages #####
# Description: This script will log only defined keywords


#!/bin/bash

tail -fn0 /var/log/messages | while read line
do
echo $line | egrep -i "refused|invalid|error|fail|lost|down|shutdown"
	if [ $? = 0 ]
	then
	echo $line >> /tmp/filtered-messages
	fi
done
