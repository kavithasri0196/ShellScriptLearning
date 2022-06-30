#!/bin/bash
read -p "Enter the year:" y

if [ $(($y%4)) -eq 0 ] && [ $(($y%400)) -eq 0 ]; then
	echo Year $y is a leap year.
else
	echo Year $y is not a leap year.
fi
