#!/bin/bash

INPUT=5

for ((i=1; i<=INPUT; i++)); do
    for((j=i; j<=INPUT; j++)); do
        echo -n " "
    done
    for ((k=1; k<=(2*i-1);k++)); do
        echo -n "*"
    done
    echo
done

