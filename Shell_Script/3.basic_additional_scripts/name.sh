#!/bin/bash

clear
echo "Hello"
read -p "please Enter Your names: " name
echo "$name" >> names.txt
clear
echo -e "Hello $name\n Your name has been added to the list"
echo "========================"
cat names.txt

echo "========================"
echo "Goodbye $name"
sleep 2
