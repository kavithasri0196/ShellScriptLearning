#!/bin/bash -x
function isPrime(){
	input=$1;
	m=$(($input /2 ));

	if [ $input -eq 0 ] || [ $input -eq 1 ]
		then
		echo false;
		return;

	else
		for (( i=2;i<=$m;i++ ))
		do
				if [ $(($input % $i)) -eq 0 ]
					then
					echo false;
					return;
				fi
		done
	fi
	echo true;
}

read -p "Enter upper bound of prime number:" x
read -p "Enter lower bound of prime number:" y
echo Printing prime numbers between $x and $y

for(( i=$x; i<=$y;i++ ));
do
	result=$(isPrime $i)
	if [ "$result" = "true" ];
		then
		echo $i
	fi
done
