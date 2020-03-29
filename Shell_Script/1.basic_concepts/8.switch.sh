#!/bin/bash


echo
echo "Choose one of the following case"
echo
echo 'a= Display date and time'
echo
echo 'b= List files and folders'
echo
echo 'c= Check system uptime'
echo
echo 'd= List of users who has logged in'
echo

read choices

case $choices in


a) date;;
b) ls;;
c) uptime;;
d) whoami;;
*) echo choice is not valid - Bye.

esac
