#!/usr/bin/env bash

numberoffiles=$(ls -l | grep -v ^d | grep -v ^total | wc -l)
# echo "Number of files $numberoffiles"

echo "Guess number of files in the current directory: "
read userguess

function checkvalidity {
	while [[ $userguess -lt 0 ]]
	do
		echo "INVALID INPUT !!!"
		echo "Guess number of files in the current directory: "
		read userguess
	done
}

checkvalidity

while [[ $userguess -ne $numberoffiles ]]
do
	if [[ $userguess -gt $numberoffiles ]]
	then
		echo "You guess is too high!"
	elif [[ $userguess -lt $numberoffiles ]]
	then
		echo "You guess is too low!"
	fi
	
	echo "Guess number of files in the current directory: "
	read userguess

	checkvalidity
	
done

if [[ $userguess -eq $numberoffiles ]]
then
	echo "Congratulations! your guess is correct."
fi