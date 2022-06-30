#!/bin/bash
headCount=0;
tailCount=0;
function flipCoin(){
coinValue=$((RANDOM%2));
}

while [ $headCount -lt 11 ] && [ $tailCount -lt 11 ]
do
flipCoin
if [ $coinValue -eq 0 ]
then 
((headCount++))
else
((tailCount++))
fi
done
echo $headCount $tailCount
