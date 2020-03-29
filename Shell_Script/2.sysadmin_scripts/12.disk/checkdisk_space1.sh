
# Description: This script will check for disk space

#!/bin/bash

echo Following is the disk space
echo
df -h | awk '0+$4 >= 50 {print}'

