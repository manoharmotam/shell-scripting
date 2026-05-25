#!/bin/bash

PACKAGE_NAME=$1

if [ "$(id -u)" != 0 ]; then
    echo "Run the script as Root.. Exitting!"
    exit 1
fi

dnf list installed $1

if [ $? -eq 0 ]; then
    echo "$1 is already installed...SKIPPING!"
    exit 122
else
    dnf install $1 -y
fi    

if [ $? -eq 0 ]; then
    echo "$1 installed successfully"
else
    echo "$1 installation failed"
fi