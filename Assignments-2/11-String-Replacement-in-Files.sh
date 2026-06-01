#!/bin/bash

FILE=$(find . -type f -name "*.conf")
REPLACE=$(sed s'/FOO/BAR/g' "$FILE")

echo "$REPLACE"

