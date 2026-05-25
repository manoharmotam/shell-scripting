#!/bin/bash

TODAY=$(date +%A)

if [ "$TODAY" == "Sunday" ] || [ "$TODAY" == "Saturday" ]; then
    echo "Weekend! Enjoy your holiday."
elif [ "$TODAY" == "Monday" ]; then
    echo "Start of the week. Let's go!"
else
    echo "Weekday. Go to school/work."
fi