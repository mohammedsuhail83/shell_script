# description: This script will create user account

#!/bin/bash

echo "Please provide a username?"
read u

useradd $u
echo Useraccount has been created

