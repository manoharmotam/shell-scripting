#!/bin/bash

FILE=$1


if [ ! -f "$FILE" ]; then
    echo "Provided input is not a file. Checking if the Directory exists!"
    if [ -d "$FILE" ]; then
        echo "Directory $FILE exists. Listing the directories"
        ls -al
    fi
elif [ -f "$FILE" ]; then
    echo "Provided input is a file. Checking if the file exists!"
    if [ -e "$FILE" ]; then
        echo "The file $FILE exists"
        if [ -r "$FILE" ]; then
            echo "File $FILE is readable"
        fi

        if [ -w "$FILE" ]; then
            echo "File $FILE is writeable"
        fi
    fi
fi

