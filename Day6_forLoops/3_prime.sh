#!/bin/bash -x
function isPrime(){
input=$1;
m=$(($input /2 ));

if [ $input -eq 0 ] || [ $input -eq 1 ]
then
echo $input is not a prime number;
return;

else
for (( i=2;i<$m;i++ ))
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

read -p "Enter a number to check whether it is a prime or not:" x
isPrime $x
