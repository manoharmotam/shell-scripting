#!/bin/bash

section(){
    echo "========================================="
}


if [ $# -eq 0 ]; then
    echo "Argument Missing. Please provide an argument."
    exit 1
else
    section
    echo "System Info Report - $1"
    section
    echo "Script PID    : $$"
    echo "Started at    : $(date '+%Y-%m-%d %T')"
    echo "User          : $USER"
    echo "OS            : $(uname -o)"
    echo "Disk (/)      : $(df -h | awk 'NR==2 {print $3 " used of " $2 }')"
    echo "Memory        : $(free -h --giga | awk 'NR==2 {print $3 " used of " $2 }')"
    echo "Uptime        : $(uptime | awk -F" " '{print $2,$3,$4,$5}' | sed 's/,$//')"
    section
    echo "Script completed in $SECONDS seconds."
fi