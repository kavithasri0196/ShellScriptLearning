#!/bin/bash
function addToArray(){
repeatedNumArray[$2]=$1;
}
index=0;
for (( i=10;i<100;i++ ));
do
if [ ${i:0:1} -eq ${i:1:1} ]
then
addToArray $i $index
((index++));
fi
done
echo ${repeatedNumArray[*]}
