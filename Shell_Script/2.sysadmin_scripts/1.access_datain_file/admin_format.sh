#!/bin/bash
# Description: Format the output of the admin commands

date | awk '{print $1}'
uptime | awk '{print $3}'
df -h | grep /dev/xvda1
