#!/bin/bash

for i in corona.*
do
	echo assidning permission to $i
	chmod a+w $i
	sleep 1
done
