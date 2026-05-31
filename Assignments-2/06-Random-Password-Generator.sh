#!/bin/bash

characters="A-Za-z0-9!@#$%^&'"
INPUT=$1

PASS=$(tr -dc $characters < /dev/urandom | head -c $INPUT)

echo $PASS