#!/bin/bash

INPUT=$1
REVERSE_INPUT=$(echo $INPUT | rev)

# if [ $# -eq 0 ]; then
#     echo "No arguments provided to check if its a palindrome or not"
# fi

if [ "$INPUT" = "$REVERSE_INPUT" ]; then
    echo "Given Input is a Palindrome"
else
    echo "Given Input is not a Palindrome"
fi
