#!/bin/bash

greatest=$1

if [ $# -lt 1 ]; then
    echo "No Arguments provided. Please provide an argument"
elif [ $# -lt 2 ]; then
    echo "Largest number is $1"
else
    for number in "$@"
    do
        if [ "$number" -gt "$greatest" ]; then
            greatest=$number
        fi
    done

    echo "Largest number is $greatest"
fi
