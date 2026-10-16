#!/usr/bin/env bash

if  [ dnf list installed nginx &>/dev/null ]; then
	echo “nginx is already installed”
else 
	echo “nginx was not installed. Installing nginx…”
	sudo yum install nginx -y
fi
