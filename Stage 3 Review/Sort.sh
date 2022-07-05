#!/bin/bash
read -p "Enter 3 Numbers seperated by space:" input

num1=`echo $input | awk '{print $1}'`
num2=`echo $input | awk '{print $2}'`
num3=`echo $input | awk '{print $3}'`

largest=0;

if [[ $num1 -gt $largest ]]; then
	largest=$num1;
fi;

if [[ $num2 -gt $largest ]]; then
		largest=$num2;
fi;

if [[ $num3 -gt $largest ]]; then
		largest=$num3;
fi

echo "Largest number found using if conditions :"  $largest;

largestUsingLoop=0;

for (( i=0; i<${#input}; i++ )); do
        currentNumber=${input:$i:1}
        if [[ $currentNumber -gt $largestUsingLoop ]]; then
			largestUsingLoop=$currentNumber;
		fi
done

echo "Largest number found using for loop :" $largestUsingLoop