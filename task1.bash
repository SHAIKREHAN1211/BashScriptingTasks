#!/usr/bin/env bash

#checkDir.bash

#Bash Script to check if a Dir is available or not.


a="/home/ec2-user/rehanshaik/scripts/bashTasks"

if [[ -d "$a" ]] 
then 
	echo "Directory Exists"
else 
	echo "Directory doesnot exists"
fi
