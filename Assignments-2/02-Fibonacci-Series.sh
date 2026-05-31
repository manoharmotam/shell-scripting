#!/bin/bash

FIB_NUMBER=$1
A=0
B=1

if [ "$FIB_NUMBER" -eq "$A" ]; then
    echo "0"
    exit
elif [ "$FIB_NUMBER" -eq "$B" ]; then
    echo "1"
    exit
fi

echo -n "$A $B"
for ((i=2; i<$FIB_NUMBER; i++)); do
    NEXT_NUMBER=$((A + B))
    echo -n " $NEXT_NUMBER"
    A=$B
    B=$NEXT_NUMBER
done
echo ''
