#!/bin/bash
result=1;
read -p "enter a number " n
for((i=1;i<=n;i++))
do 
result=$(($result*2))
echo 2 power $i equals $result
done
