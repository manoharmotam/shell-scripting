#!/bin/bash

NAME=$1
AGE=$2
CITY=$3
LIMIT=60
CURRENT_AGE=$(($LIMIT-$2))

echo "My Name is $1, I am $AGE years old and I live in $CITY."
echo "Years until 60: $CURRENT_AGE"