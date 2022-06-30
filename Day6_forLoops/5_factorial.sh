#!/bin/bash -x
result=1;
read -p "Enter n to find factorial:"  number

for ((i=1;i<=$number;i++))
do 
	result=$(($result*$i))
done
echo $result


