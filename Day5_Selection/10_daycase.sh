#!/bin/bash
read -p "Enter a Day between (1-7):" x

if [[ $x -gt 7 ]] && [[ $x -eq 0 ]]; then
	echo Invalid Day. Input should be between 1-7.
	exit;
fi

case $x in
	1)
		echo Sunday;;
	2)
		echo Monday;;
	3)
		echo Tuesday;;
	4)
		echo Wednesday;;
	5)
		echo Thursday;;
	6)
		echo Friday;;
	7)
		echo Saturday;; 
	*)
		echo Invalid Day. Input should be between 1-7.
esac
