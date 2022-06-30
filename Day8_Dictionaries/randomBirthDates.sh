#!/bin/bash -x
declare -A birthMonthStore;

function setRandomMonth(){
echo settingRandomMonth
randomMonth=$(($((RANDOM%12))+1));
}

counter=0;
while [ $counter -eq 50 ]
do
setRandomMonth
echo $randomMonth
if[ -v birthMonthStore[$randomMonth] ]
then
echo "key present" $randomMonth;
array=${birthMonthStore[$randomMonth]};
lastIndex=$((${#array} - 1));
array[$lastIndex]=$counter;
birthMonthStore[$randomMonth]=$array;

else
birthMonthStore[$randomMonth]=($counter)
fi

((counter++))
done
printAll

function printAll(){ 
for month in  "${!birthMonthStore[@]}";
 do 
array=${birthMonthStore[$month]}
echo $month - ${array[@]}; 
done;
}
