#!/bin/bash

LOG_FILE='app.log'
LEVELS=("INFO" "WARN" "ERROR" "DEBUG")
RED='\e[31m'
GREEN='\e[32m'
YELLOW='\e[33m'
ZERO='\e[0m'
COUNT=0

while [ $COUNT -le 100 ]; do
	LEVEL=${LEVELS[$RANDOM % ${#LEVELS[@]}]}
	if [ $LEVEL == INFO ]; then
		echo -e "$(date '+%Y-%m-%d %H:%M:%S') $LEVEL Log message generated" >> $LOG_FILE
	elif [ $LEVEL == WARN ]; then
		echo -e "$(date '+%Y-%m-%d %H:%M:%S') $YELLOW$LEVEL$ZERO Log message generated" >> $LOG_FILE
	elif [ $LEVEL == DEBUG ]; then
                echo -e "$(date '+%Y-%m-%d %H:%M:%S') $GREEN$LEVEL$ZERO Log message generated" >> $LOG_FILE
	elif [ $LEVEL == ERROR ]; then
                echo -e "$(date '+%Y-%m-%d %H:%M:%S') $RED$LEVEL$ZERO Log message generated" >> $LOG_FILE
	fi
	((COUNT++))
	sleep 1
done
