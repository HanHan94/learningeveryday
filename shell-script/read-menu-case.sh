#!/bin/bash

# read-menu: a menu driven system information program

DELAY=3 # Number of seconds to display results
set -x
export PS4='$LINENO + '

while true; do

	clear

	cat <<- _EOF_
		Please Select:

		1. Display System Information
		2. Display Disk Space
		3. Display Home Space Utilization
		0. Quit
	_EOF_

	read -p "Enter selection [0-3] > "

	case $REPLY in
		0)
			echo "Program terminated."
			break
			;;

		1)
			echo "Hostname: $HOSTNAME"
			uptime
			sleep $DELAY
			continue
			;;&

		2)
			df -h
		    sleep $DELAY
			#continue
			;;&

		3)
			if [[ $(id -u) -eq 0 ]]; then
				echo "Home Space Utilization (All Users)"
				du -sh /home/*
			else
				echo "Home Space Utilization ($USER)"
				du -sh $HOME
			fi
			sleep $DELAY
			#continue
		    ;;&
		*)
			echo "Invalid entry."
			sleep $DELAY
			;;
	esac
done

