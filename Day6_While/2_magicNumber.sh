#!/bin/bash -x
echo "Guess a number between 1 to 100:"
start=1;
end=100;
mid=$(($(($start+$end))/2))

while [[ $start -le $end ]]; do
	read -p "Is the number greater than or equal to $mid:(enter y or e or n):" response

	if [[ "$response" = "y"  ]]; then
		start=$(($mid+1));
	elif [[ "$response" = "e" ]]; then
		echo Thankyou for playing. The number you guessed is $mid
		exit;
	else
		end=$(($mid-1))
	fi

	mid=$(($(($start+$end))/2))

done

