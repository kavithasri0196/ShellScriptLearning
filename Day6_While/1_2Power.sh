#!/bin/bash
result=1;
counter=1;
read -p "Enter number for till which power table should be printed:" n

while [ $counter -le $n ] && [ $result -lt 256 ]
do
	result=$(($result*2));
	echo 2 to the power of $counter is $result
	((counter++))
done;
