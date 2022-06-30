#!/bin/bash -x
declare -A diceRollCount=(["1"]=0 ["2"]=0 ["3"]=0 ["4"]=0 ["5"]=0 ["6"]=0);
maxPresent10Times=0;
minOccurence=0;

function rollDice(){
diceValue=$(($((RANDOM%6)) + 1));
diceRollCount[$diceValue]=$((diceRollCount[$diceValue] + 1))
if [ ${diceRollCount[$diceValue]} -gt 9 ]
then
maxPresent10Times=${diceRollCount[$diceValue]};
echo "Max occurence 10 occured for " $diceValue;
setMinOccurence
fi;
}

function setMinOccurence(){
minOccurence="${diceRollCount[1]}";
for diceRoll in "${!diceRollCount[@]}";
do 
if [ ${diceRollCount[$diceRoll]} -lt $minOccurence ]
then
minOccurence=${diceRollCount[$diceRoll]};
minKey=$diceRoll;
fi;
done;
echo "minOccurenceOccured for " $minOccurence " which occured for " $minKey
}

function printAllDictionaryValues(){
for diceRoll in "${!diceRollCount[@]}";
do
echo $diceRoll - "${diceRollCount[$diceRoll]}";
done;
}


while [ $maxPresent10Times -lt 10 ];
do
rollDice
done
printAllDictionaryValues