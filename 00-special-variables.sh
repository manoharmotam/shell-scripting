#!/bin/bash

echo "All arguments passed: $@"
echo "Number of arguments passed: $#"
echo "PID of the script process: $$"
sleep 5 &
echo "Background PID of the script: $!"
wait $!
echo "Check if last command was successful(Exit Code): $?"
echo "Check the current script: $0"
echo "Current user: $USER"
echo "Current working dir: $PWD"
echo "Some Random number: $RANDOM"
echo "Line no: $LINENO"