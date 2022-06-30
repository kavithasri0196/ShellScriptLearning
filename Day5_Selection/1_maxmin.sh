#!/bin/bash
function getRandom3Digit(){
	echo $((RANDOM%900 +100))
}

a=$(getRandom3Digit);
randomNumberStore=$a;

max=$a;min=$a;

for((i=0;i<4;i++)); do
	randomNumber=$(getRandom3Digit);
	randomNumberStore=`echo $randomNumberStore $randomNumber`
	if [ $randomNumber -gt $max ];then 
		max=$randomNumber;
		elif [ $randomNumber -lt $min ];then 
			min=$randomNumber;
	fi
done


echo Max is $max
echo Min is $min
echo Random Values are $randomNumberStore;



