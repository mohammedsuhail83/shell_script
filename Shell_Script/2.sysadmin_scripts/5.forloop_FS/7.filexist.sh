#!/bin/bash

Files="/etc/init.d/network
/etc/fonts
/etc/ssh_config
/etc/rc.d/rc0
/etc/virc"

for i in $Files
do
	if [ ! -e $i ]
	then
	echo $i doesnt exist
	fi
done
