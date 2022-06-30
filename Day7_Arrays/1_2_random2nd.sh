#!/bin/bash -x
function random3Digit(){
	randomNumber=$((RANDOM%900 + 100))
}

function secondLargest(){
	largest=${randomArray[0]};
	secondLargest=${randomArray[0]};

	for x in "${randomArray[@]}";do
		if [ $x -gt $largest ]; then
			secondLargest=$largest;
			largest=$x
			elif [ $x -gt $secondLargest ]; then
				secondLargest=$x
		fi
	done
	echo $largest  $secondLargest
}

function secondSmallest(){
	smallest=${randomArray[0]};
	secondSmallest=${randomArray[0]};

	for y in "${randomArray[@]}"; do
		if [ $y -lt $smallest ]; then
			secondSmallest=$smallest;
			smallest=$y
			elif [ $y -lt $secondSmallest ]; then
				secondSmallest=$y
		fi
	done
	echo $smallest  $secondSmallest
}

sortRandomArray(){
	sortedArray=( $( printf "%s\n" "${randomArray[@]}" | sort -n ) )
}

for((i=0;i<10;i++));do
	random3Digit;
	randomArray[$i]=$randomNumber;
done;

echo ${randomArray[*]}
secondLargest
secondSmallest
sortRandomArray
echo ${sortedArray[*]}
echo Second smallest is ${sortedArray[1]}
echo Second largest is ${sortedArray[8]}
