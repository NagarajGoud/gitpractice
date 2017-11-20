#!/bin/sh
# This is a bash script which connects to hosts via ssh mentioned in script.txt file and  
for i in $(echo $hostname | sed "s/,/ /g"); do   #This will take the argument (comma seperated)
do
	i=`ssh $username@$i -o ConnectTimeout=5 -o StrictHostKeyChecking=no  "hostname -I | cut -d ' ' -f2  ;uptime | grep -ohe '"load average[s:][: ].*"'"
done
