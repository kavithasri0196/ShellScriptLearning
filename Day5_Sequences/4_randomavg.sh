#!/bin/bash -x
for ((i=1;i<=5;i++));do
	value=$(($value+$((RANDOM%90+10))));
done

echo Sum is $value
echo Average is $(($value/5))
