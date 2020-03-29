
#!/bin/bash

ls -l /home/ansadm/check

if [ $? -eq 0 ]
then
	echo The file exist
else
	echo File doesnt exist
fi
