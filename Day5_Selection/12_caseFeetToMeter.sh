#!/bin/bash
echo Select conversion factor. Enter 1/2/3/4
echo Option 1 - Feet to Inch
echo Option 2 - Feet to Meter
echo Option 3 - Inch to Feet
echo Option 4 - Meter to feet

read -p "Enter your option here:" conversionFactor

case $conversionFactor in 
	1)
		read -p "Feet:" x
		echo `awk -vp=$x -vq=13 'BEGIN{printf "%.2f" ,p * q}'` Inch;;
	2)
		read -p "Feet:" x
		echo `awk -vp=$x -vq=.304 'BEGIN{printf "%.2f" ,p * q}'` Meter;;
	3)
		read -p "Inch:" x
		echo `awk -vp=$x -vq=.083 'BEGIN{printf "%.2f" ,p * q}'` Feet;;
	4)
		read -p "Meter:" x
		echo `awk -vp=$x -vq=3.280 'BEGIN{printf "%.2f" ,p * q}'` Feet;;
	*)
		echo Invalid Option Selected.;;
esac
