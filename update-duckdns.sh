#!/bin/bash

DOMAIN="mrmotam"
TOKEN="6f5ea30d-9955-4271-8e9e-10fa4be0d582"

IP=$(curl -4 -s https://checkip.amazonaws.com | tr -d '\n')

curl -s "https://www.duckdns.org/update?domains=${DOMAIN}&token=${TOKEN}&ip=${IP}" \
    -o /var/log/duckdns.log
