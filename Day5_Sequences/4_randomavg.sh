#!/bin/bash -x
for ((i=1;i<=5;i++))
do
value=$(($value+$((RANDOM%90+10))));
done
echo $(($value/5))
