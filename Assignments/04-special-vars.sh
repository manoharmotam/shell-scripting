#!/bin/bash

echo "Running as: $USER"
echo "Directory: $PWD"
echo "Home: $HOME"
echo "Script PID: $$"
sleep 5 &
echo "Background PID: $!"
wait $!
echo "Random Number: $RANDOM"
echo "Script ran in $SECONDS seconds"
