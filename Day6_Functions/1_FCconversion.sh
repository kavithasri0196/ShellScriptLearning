#!/bin/bash
maxC=100;
minC=0;
minF=32;
maxF=212;

function invalidInput(){
	echo The given input is invalid. The farenhiet values should be between $minF F - $maxF F. And The Celcius  values should be between $minc C- $maxC C;
}

function convert(){
	case $1 in 
		C)
			if [ $2 -ge $minC ] && [ $2 -le $maxC ]
			then
				echo `awk -vp=$2 'BEGIN{printf "%.2f" ,p * 9/5 + 32}'` F;
			else
				invalidInput
			fi
		;;
		F)
			if [ $2 -ge $minF ] && [ $2 -le $maxF ]
			then
				echo `awk -vp=$2 'BEGIN{printf "%.2f" ,( p -32 ) * 5/9}'` C;
			else
				invalidInput
			fi
		;;
		*)
			echo Invalid input. The input should be either F or C. Eg: 32 F or 36 C;
		;;
	esac
}

read -p "Enter the F/C to convert:" x
unit=`echo $x | awk '{print $2}'`
value=`echo $x | awk '{print $1}'`
convert $unit $value
