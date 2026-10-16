#!/usr/bin/env bash

# createmultipleFiles.bash

#CreatedDate: 16/10/2026

cd /home/ec2-user/rehanshaik/scripts/


if [[ $?==0 ]]; then touch a.txt b.txt c.txt

else 
	echo "Specified Directory Doesnot Exists or any issue with the Director"
fi
