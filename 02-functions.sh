#!/bin/bash

#Defining colors for logging
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
BLUE='\e[34m'
NOCOLOR='\e[0m'

if [ $(id -u) -ne 0 ]; then
	echo -e "$RED Please run the script as Root user"
	exit 1
fi

VERIFY(){
	if [ $2 -ne 0 ]; then
		echo -e "$(date '+%Y-%m-%d %T') $RED[ERROR]$NOCOLOR Installation Failed"
	else
		echo -e "$(date '+%Y-%m-%d %T') $GREEN[SUCCESS]$NOCOLOR Installation Successful"
	fi
}

dpkg -s mysql-server
if [ $? -eq 0 ]; then
	echo -e "$(date '+%Y-%m-%d %T') $BLUE[INFO]$NOCOLOR Package Already Installed"
else
	apt install mysql-server -y
	VERIFY MySQL $?
fi	
