#!/bin/bash

echo "Enter the Day of the month (eg: Mon)"
read day
echo
echo "Enter the Month (eg: Aug)"
read month
echo
echo "Enter the date of the month (eg: 23)"
read date
echo

last | grep "$day $month $date"
