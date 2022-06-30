#!/bin/bash
index=0;
function addToPrimeFactorArray(){
	primeFactorArray[$1]=$2;
}

function calculateSquareRoot(){
	actualSqrt=`echo "$input" | awk '{print sqrt($input)}'`;
	sqrtRoundedOff=`echo $actualSqrt | awk -F. '{print $1}' `
}

function primeFactors(){
	input=$1;

	while [ $(($input % 2)) == 0 ]; do
		addToPrimeFactorArray $index 2;
		((index++))
		input=$(($input / 2));
	done

	calculateSquareRoot;

	for(( i=3; i<=$sqrtRoundedOff;i+=2 )); do
		while [ $(($input % $i)) == 0 ]; do
			addToPrimeFactorArray $index $i;
			((index++))
			input=$(($input / $i));
		done
		calculateSquareRoot
	done

	if [ $input -gt 2 ]; then
		addToPrimeFactorArray $index $input;
		((index++))
	fi
}

read -p "Enter the number for which we need to find prime factors:" x
primeFactors $x
echo ${primeFactorArray[*]}
