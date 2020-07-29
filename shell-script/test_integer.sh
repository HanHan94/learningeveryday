#!/bin/bash

# test_integer : determine if an integer is outside a
# specified range of values.

MIN_VAL=1
MAX_VAL=100

echo -n "Please enter an integer -> "
read INT

if [[ $INT =~ ^-?[0-9]+$ ]]; then
	if [[ ! (INT -ge MIN_VAL && INT -le MAX_VAL) ]]; then
		echo "$INT is outside $MIN_VAL to $MAX_VAL"
	else
		echo "$INT is in range"
	fi
else
	echo "INT is not an integer" >&2
	exit 1
fi
