#!/bin/bash

LOG_PATH=/tmp/
LOG_FILE=$LOG_PATH/script.log
ERROR_LOG=$LOG_PATH/script_errors.log

{ ls /tmp; ls /fakedir; date; } >> "$LOG_FILE" 2>> "$ERROR_LOG"

cat $LOG_FILE 
cat $ERROR_LOG