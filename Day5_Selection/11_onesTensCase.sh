#!/bin/bash
read -p "Enter a value in multiples of 10.(Maximum allowed: 100000000): " x

if [[ ${#x} -gt 9 ]] || [[ $(($x%10)) -ne 0 ]]; then
	echo Invalid Input. Maximum allowed input is 100000000 and value should be multiples of 10.
	exit;
fi

case $x in
	1)
		echo Ones;;
	10)
		echo Tens;;
	100)
		echo HUndreds;;
	1000)
		echo Thousands;;
	10000)
		echo Ten Thousands;;
	100000)
		echo Thursday;;
	1000000)
		echo Lakhs;;
	10000000)
		echo Ten Lakhs;;
	100000000)
		echo Crores;;
	1000000000)
		echo Ten Crores;;
	*)
		echo Invalid Input. Maximum allowed input is 100000000 and value should be multiples of 10.
esac