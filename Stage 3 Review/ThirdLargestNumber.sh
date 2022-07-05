#!/bin/bash -x
inputArray[0]=10;
inputArray[1]=2;
inputArray[2]=11;
inputArray[3]=31;
inputArray[4]=9;

echo "Input Array is" "${inputArray[*]}"

#Sorting Using inBuilt function
sortedArray=( $(printf "%s\n" "${inputArray[@]}" | sort -n ))
echo "Sorted Array using inbuilt function is" "${sortedArray[*]}"

#Sorting Using userDefined function
function sortArray(){

	for (( i = 0; i < 5; i++ )); do
		for (( j = (($i+1)); j < 5; j++ )); do
			temp=0;
			if [[  ${inputArray[i]} -gt ${inputArray[j]} ]]; then
				temp=${inputArray[$i]};
				inputArray[$i]=${inputArray[$j]};
				inputArray[$j]=$temp;
			fi
		done
	done

}

sortArray

echo "Sorted Array using user defined function is function is" "${inputArray[*]}"