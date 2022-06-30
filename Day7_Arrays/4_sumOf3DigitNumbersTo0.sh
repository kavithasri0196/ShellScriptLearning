#!/bin/bash -x
function addToArray(){
zeroArray[0]=2;
zeroArray[1]=-1;
zeroArray[2]=-1;
}
addToArray;
sum=0;
len=${#zeroArray[@]}
for (( i=0;i<$len;i++ ));
do
sum=$((sum+${zeroArray[$i]}));
done;

echo ${zeroArray[*]}
echo Sum is $sum;
