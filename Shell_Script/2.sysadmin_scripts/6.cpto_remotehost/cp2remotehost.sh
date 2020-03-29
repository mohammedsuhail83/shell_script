#!/bin/bash

for i in 172.31.84.209 172.31.91.101
do
	scp /home/ansadm/* root@$i:/tmp/
done 
