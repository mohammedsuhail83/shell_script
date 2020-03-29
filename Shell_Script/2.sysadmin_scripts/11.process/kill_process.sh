#!/bin/bash

a=`ps -ef | grep sleep | grep -v grep | awk '{print $2}'`

for i in $a
do
kill -9 $i
done
