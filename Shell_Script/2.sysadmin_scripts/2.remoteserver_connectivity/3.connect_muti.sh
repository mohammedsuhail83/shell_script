#####################################
### Ping Multiple hosts at a time ###
#####################################

#!/bin/bash

hosts="/home/ansadm/hostfile"
for ip in $(cat $hosts)
do
ping -c5 $ip &> /dev/null
	if [ $? -eq 0 ]
	then
	echo $ip is UP
	else
	echo $ip is DOWN
	fi
done
