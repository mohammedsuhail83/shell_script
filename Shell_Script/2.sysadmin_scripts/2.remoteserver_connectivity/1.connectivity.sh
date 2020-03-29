########################################
######  Check connectivity of the ######
######  Remote server by pinging  ######
######  Nullify stderr & stdout   ######
########################################

#!/bin/bash

ping -c5 172.31.83.209 
	if [ $? -eq 0 ]
	then
	echo Server is Up
	else
	echo Server is not reachable
	fi
