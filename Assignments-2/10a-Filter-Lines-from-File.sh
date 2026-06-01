#!/bin/bash

FILE='sample.log'
OUTPUT_FILE='output.log'

while IFS= read -r line;
do
    echo "$line" | grep -i error >> $OUTPUT_FILE
done < $FILE