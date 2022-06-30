#!/bin/bash
function isPrime(){
	input=$1;
	m=$(($input /2 ));

	if [ $input -eq 0 ] || [ $input -eq 1 ]
	then
		echo $input is not a prime number;
		return;
	else
		for (( i=2;i<=$m;i++ ))
		do
			if [ $(($input % $i)) -eq 0 ]
			then
				echo $input is not a prime number;
				return;
			fi
		done
	fi
	echo $input is a prime number.
}

function isPalindrome(){ 
	len=${#1}
	reverse=""

	for((i=$len -1;i>=0;i--))
	do
		reverse="$reverse${1:$i:1}"
	done

	if [ $1 ==  $reverse ]
	then
		echo Given input $x is a palindrome
	else
		echo Given input $x is not a palindrome
	fi
}

read -p "Enter a numbe to check whether it is a prime or not:" x
isPrime $x
isPalindrome $x
