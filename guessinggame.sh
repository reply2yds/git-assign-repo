#!/usr/bin/env bash
# File: guessinggame.sh

function checknumfile {
	if [[ $num -eq $(ls | wc -l) ]]
	then
		echo "CONGRATULATION!!! You gussed it right."
	elif [[ $num -gt $(ls | wc -l) ]]
	then
		echo "Incorrect guess!!! Higher than the original. Guess again."
	else
		echo "Incorrect guess!!! Lower than the original. Guess again."
	fi
}

num=-1

while  [[ $num -ne $(ls | wc -l) ]]
do
	echo "guess how many files are iCn current directory:"
	read num
	checknumfile
done
