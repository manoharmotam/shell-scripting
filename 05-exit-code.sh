#!/bin/bash

STATUS=0

ls /tmp > /dev/null 2>&1
if [ "$?" -eq 0 ]; then
    echo "SUCCESS"
else
    echo "FAILURE"
    STATUS=1
fi

ls /fakedir > /dev/null 2>&1
if [ "$?" -eq 0 ]; then
    echo "SUCCESS"
else
    echo "FAILURE"
    STATUS=1
fi

ping -c1 google.com > /dev/null 2>&1
if [ "$?" -eq 0 ]; then
    echo "Host reachable"
else
    echo "Host not reachable"
    STATUS=1
fi

exit $STATUS