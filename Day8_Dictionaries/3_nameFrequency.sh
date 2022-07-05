#!/bin/bash -x
declare -A nameDictionary;

function printAll(){ 
	for character in  "${!nameDictionary[@]}"; do 
		count=${nameDictionary[$character]}
		echo $character - $count; 
	done;
}

counter=0;

read -p " Enter a name : " name
for (( i=0; i<${#name}; i++ )); do
        currentCharacter=${name:$i:1}
        if [ -v nameDictionary[$currentCharacter] ];then
			newValue=$((${nameDictionary[$currentCharacter]} +1));
			nameDictionary[$currentCharacter]=$newValue;
		else
			nameDictionary[$currentCharacter]=1;
		fi
done

printAll