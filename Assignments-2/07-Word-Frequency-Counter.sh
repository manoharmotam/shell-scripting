#!/bin/bash

FILE=$1
TOP_5=$(cat "$FILE" | tr ' ' '\n' | sort | uniq -c | sort -r -n | head -n5)

echo "Top 5 most repeating words:"
echo "$TOP_5"
