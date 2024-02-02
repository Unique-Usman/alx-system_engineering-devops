#!/usr/bin/env bash
# find the ip address of the rasberry pi on the same internet with a name
echo "Input the name of your rasberrypi: "
read RAS_NAME
ping "$RAS_NAME.local" | grep 
