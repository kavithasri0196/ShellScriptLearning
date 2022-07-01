#!/bin/bash -x
random2Digit(){
	randomNumber=$((RANDOM%90 + 10))
}

generateRandomArray(){
  for (( i = 0; i < 10; i++ )); do
      random2Digit;
      randomArray[$i]=$randomNumber;
  done
}

validateUserInput(){
length=$(echo "$1" | awk '{ print NF }')
if [ "$length" -lt 3 ]; then
  echo "At least 3 elements should be provided for finding third largest element."
  exit;
fi
}

convertUserInputToArray(){
  for (( i = 1; i <= "$length"; i++ )); do
      currentValue=$(echo "$1" | awk -vi="$i" '{print $i}')
      userArray[$i]=$currentValue;
  done
  #echo "User array values::"  "${userArray[*]}"
}

sortRandomArrayAndPrint3rdLargest(){
  inputArray=("$@")
  echo "Input Array values are: " "${inputArray[*]}"
	sortedArray=( $( printf "%s\n" "${inputArray[@]}" | sort -nr ) )
	echo "Third largest element is: " "${sortedArray[2]}"
}

echo "*******************Finding 3rd largest element in the Array that has 10 Values*******************"
read -p "Do you want to provide elements that has to be stored in the Array for comparison y/n:" userResponse
if [ "$userResponse" = "y" ]; then
    read -p "Enter at least 3 numbers separated by space." userInput
    validateUserInput "$userInput";
    convertUserInputToArray "$userInput";
    sortRandomArrayAndPrint3rdLargest "${userArray[@]}"
    else
      generateRandomArray
      sortRandomArrayAndPrint3rdLargest "${randomArray[@]}"
fi

#echo "Sorted Array values are: " "${sortedArray[*]}"