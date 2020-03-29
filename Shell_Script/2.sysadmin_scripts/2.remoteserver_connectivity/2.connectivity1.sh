#!/bin/bash

host='172.31.84.209'
ping -c3 $host &> /dev/null
if [ $? -eq 0 ]
then
echo
echo Server is UP
else
echo
echo Server is Down
fi
