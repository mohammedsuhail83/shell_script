#!/bin/bash

a=`lastlog | tail -n+2 | grep 'test*' | awk '{print $1}'`

for i in $a
do
	usermod -L $i 
done
