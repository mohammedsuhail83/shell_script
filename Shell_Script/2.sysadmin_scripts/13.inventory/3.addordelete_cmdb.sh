# Description: This script will ask to add or delete a record
#		from a database file

#!/bin/bash
clear

echo
echo "Please select one of the following"
echo
echo "a = Add a Record"
echo "b = Delete a Record"
echo

	read choice
	case $choice in

a)	/scripts/Shell1/inventory/cmdb.sh;;
b)	/scripts/Shell1/inventory/delete_record.sh;;
*)	echo Invalid Choice - Adios.

	esac
