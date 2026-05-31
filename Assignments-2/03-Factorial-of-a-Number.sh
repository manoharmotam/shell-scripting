#!/bin/bash

INPUT=$1

if [ $1 -eq 0 ]; then
    echo "0"
    exit
elif [ $1 -eq 1 ]; then
    echo "1"
    exit
fi
FACT_NUMBER=1
for ((i=2; i<=$INPUT; i++)); do
    FACT_NUMBER=$((FACT_NUMBER*i))
done
echo $FACT_NUMBER