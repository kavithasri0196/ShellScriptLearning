#!/bin/bash
read -p "Enter the day: " day
read -p "Enter the month: " month

if [ $month -eq  4 ] || [ $month -eq  5 ];then 
	echo true
elif [ $month -eq 3 ] && [ $day  -gt  20 ];then
	echo true
elif [ $month -eq 6 ] && [ $day  -lt  20 ];then
	 echo true
else
	 echo false
fi

