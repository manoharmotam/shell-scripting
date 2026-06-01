#!/bin/bash

FILE=$1


if [ -z "$FILE" ]; then
    echo "File name is not provided"
    exit
fi

if [ ! -s "$FILE " ]; then
    echo "$FILE is empty or has no content inside"
    exit
fi

if [ ! -r "$FILE" ] && [ ! -w "$FILE" ]; then
    echo "You have no permissions to view the file"
    exit
fi

if [ -e "$FILE" ]; then
        if [ ! -s "$FILE" ]; then
            echo "File $FILE is empty. It has no content"
        else
            NUMBER_OF_LINES=$(grep -c "^" "$FILE") 2>> /dev/null
            NUMBER_OF_WORDS=$(wc -w < "$FILE") 2>> /dev/null
            NUMBER_OF_CHARS=$(wc -c < "$FILE") 2>> /dev/null
            echo "$FILE has $NUMBER_OF_LINES of lines, $NUMBER_OF_WORDS of words and $NUMBER_OF_CHARS of Characters."
        fi
fi