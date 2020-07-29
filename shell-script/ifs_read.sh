#!/bin/bash

# ifs_read.sh: read string with specific field separator

read -p "Press string with specific field separator > "
echo "The input value: $REPLY "
OLD_IFS=$IFS
IFS=":"
read home user <<< $REPLY
IFS=$OLD_IFS
echo "$home"
echo "$user"



