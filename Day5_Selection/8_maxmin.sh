#!/bin/bash
read -p "enter A :" a
read -p "enter B :" b
read -p "enter C :" c

p=$((a+b*c))
q=$((a%b+c))
r=$((c+a/b))
s=$((a*b+c))

max=$p;min=$p;

if [ $q -gt $max ];
then 
max=$q;
elif [ $r -gt $max ];
then
max=$r; 
elif [ $s -gt $max ];
then
max=$s;
fi

if [ $q -lt $min ];
then
min=$q;
elif [ $r -lt $min ];
then
min=$r;
elif [ $s -lt $min ];
then
min=$s;
fi
echo $max
echo $min
echo $p $q $r $s;



