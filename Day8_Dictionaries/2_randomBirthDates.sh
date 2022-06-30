#!/bin/bash -x
declare -A birthMonthStore;

function setRandomMonth(){
	randomMonth=$(($((RANDOM%12))+1));
}

function printAll(){ 
	for month in  "${!birthMonthStore[@]}"; do 
		array=${birthMonthStore[$month]}
		echo $month - ${array[@]}; 
	done;
}

counter=0;

while [ $counter -ne 50 ];do
	setRandomMonth
	if [ -v birthMonthStore[$randomMonth] ];then
		newValue=`echo ${birthMonthStore[$randomMonth]} $counter`;
		birthMonthStore[$randomMonth]=$newValue;
	else
		birthMonthStore[$randomMonth]=$counter
	fi
	((counter++))
done

printAll