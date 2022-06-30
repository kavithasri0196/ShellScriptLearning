#!/bin/bash
result=0;
read -p "enter the number" n
for((i=1;i<=n;i++))
do
result=`awk -vp=$result -vq=$i'BEGIN{printf "%.2f" ,p + 1/q}'`
done
echo $result 
