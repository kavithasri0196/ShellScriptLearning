#!/bin/bash
read -p "Enter a value in multiples of 10.(Maximum allowed: 100000000): " x

if [[ ${#x} -gt 9 ]] || [[ $(($x%10)) -ne 0 ]]; then
	echo Invalid Input. Maximum allowed input is 100000000 and value should be multiples of 10.
	exit;
elif [[ $x -eq 1 ]]; then
	echo Ones;
elif [[ $x -eq 10 ]]; then
	echo Tens;
elif [[ $x -eq 100 ]]; then
	echo HUndreds;
elif [[ $x -eq 1000 ]]; then
	echo Thousands;
elif [[ $x -eq 10000 ]]; then
	echo Ten Thousands;
elif [[ $x -eq 100000 ]]; then
	echo Thursday;
elif [[ $x -eq 1000000 ]]; then
	echo Lakhs;
elif [[ $x -eq 10000000 ]]; then
	echo Ten Lakhs;
elif [[ $x -eq 100000000 ]]; then
	echo Crores;
elif [[ $x -eq 100000000 ]]; then
	echo Ten Crores;
else
	echo Invalid Input. Maximum allowed input is 100000000 and value should be multiples of 10.
fi