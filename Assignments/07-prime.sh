#!/bin/bash

NUMBER=$1

if [ $# -eq 0 ]; then
    echo "No arguments provided. Exiting...!"
    exit
fi

if [ $NUMBER -lt 2 ] && [ $((NUMBER % NUMBER)) -eq 0 ]; then
    echo "$NUMBER is not a Prime Number"
else
    echo "$NUMBER is a Prime Number"
fi