#!/bin/bash
read -p "Enter a Day between (1-7):" x

if [[ $x -gt 7 ]] && [[ $x -eq 0 ]]; then
	echo Invalid Day. Input should be between 1-7.
	exit;
elif [[ $x -eq 1 ]]; then
	echo Sunday;
elif [[ $x -eq 2 ]]; then
	echo Monday;
elif [[ $x -eq 3 ]]; then
	echo Tuesday;
elif [[ $x -eq 4 ]]; then
	echo Wednesday;
elif [[ $x -eq 5 ]]; then
	echo Thursday;
elif [[ $x -eq 6 ]]; then
	echo Friday;
elif [[ $x -eq 7 ]]; then
	echo Saturday;
else
	echo Invalid Day. Input should be between 1-7.
fi