#!/bin/bash

#color schemes
RED='\e[31m'
YELLOW='\e[32m'
GREEN='\e[33m'
NOCOLOR='\e[0m'

MEMORY_TOTAL=$(awk '/MemTotal/ {print $2}' /proc/meminfo)
MEMORY_AVAILABLE=$(awk '/MemAvailable/ {print $2}' /proc/meminfo)
MEMORY_USED=$(($MEMORY_TOTAL - $MEMORY_AVAILABLE))
MEMORY_USAGE=$(( 100 * MEMORY_USED / MEMORY_TOTAL ))
DISK_USAGE=$(df -Th | awk '/^\/dev\/root/ {print $6}' | awk '{gsub(/%/,"");print}')
echo "Running Health check report.... !"
echo
sleep 1
echo "============================================================"
echo -e "\t\t  Health Check Report START \t\t"
echo "============================================================"
echo

echo -e "\t\t Checking the MEMORY USAGE"
echo
echo -e "Total Memory \t\t\t\t\t $(free --si -h | awk 'NR==2 {print $2}')"
echo -e "Used Memory \t\t\t\t\t $(free --si -h | awk 'NR==2 {print $3}')"
echo -e "Available Memory \t\t\t\t $(free --si -h | awk 'NR==2 {print $7}')"
if [ $MEMORY_USAGE -gt '80' ]; then
    echo "Memory usage is beyond threshold(80%): ${MEMORY_USAGE}%"
    echo
    echo -e "$RED MEMROY NOT OK \n Free up some memory $NOCOLOR"
else
    echo -e "\n\t\t\t$GREEN MEMORY OK $NOCOLOR"
fi
echo
echo "++++++++++++++++++ MEMORY REPORT END ++++++++++++++++++++++"
echo
echo
echo -e "\t\t Checking the DISK USAGE"
echo
echo -e "FileSystem Name: \t\t\t\t $(df -Th | awk '/^\/dev\/root/ {print $1}')"
echo -e "FileSystem Type: \t\t\t\t $(df -Th | awk '/^\/dev\/root/ {print $2}')"
echo -e "Size: \t\t\t\t\t\t $(df -Th | awk '/^\/dev\/root/ {print $3}')"
echo -e "Used: \t\t\t\t\t\t $(df -Th | awk '/^\/dev\/root/ {print $4}')"
echo -e "Available: \t\t\t\t\t $(df -Th | awk '/^\/dev\/root/ {print $5}')"
echo -e "Usage: \t\t\t\t\t\t $(df -Th | awk '/^\/dev\/root/ {print $6}')"
echo -e "Mount Path: \t\t\t\t\t $(df -Th | awk '/^\/dev\/root/ {print $7}')"
echo
if [ $DISK_USAGE -gt '75' ]; then
    echo "Disk usage is beyond threshold(75%): ${DISK_USAGE}%"
    echo
    echo -e "\t\t\t$RED DISK NOT OK\n\t\t      Free up Disk Space $NOCOLOR"
else
    echo -e "\n\t\t\t$GREEN DISK SPACE OK $NOCOLOR"
fi
echo
echo "============================================================"
echo -e "\t\t  Health Check Report END \t\t"
echo "============================================================"
