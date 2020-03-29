

#!/bin/bash

tar -cvf /tmp/backupfs.tar /etc

gzip /tmp/backupfs.tar

find /tmp/backupfs.tar.gz -mtime -1 -type f -print &> /dev/null

if [ $? -eq 0 ]
then
echo
echo Backup is created
echo
echo archiving the backup
else
echo backup is failed
fi
