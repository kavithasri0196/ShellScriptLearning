#!/bin/bash -x
result=1;
read -p "enter n"  number
for ((i=1;i<=$number;i++))
do 
result=$(($result*$i))
done
echo $result


