#!/bin/bash

#quantity - variable of actual number of files
#number - variable of user's response

function guessquantity {
quantity=`ls -laR | grep "^-" | wc -l`
echo "Please give an answer on a simple question. Guess how many files are in the current directory?"
echo "Include also files in directories within this directory"
while [[ $number -ne $quantity ]]
do
read number
	if [[ $number -gt $quantity ]]
	then
		echo "Your answer is too high"
		echo "Hey! Don't give up! Try to guess again:"
	elif [[ $number -lt $quantity ]]
	then
		echo "Your answer is too low"
		echo "Hey! Don't give up! Try to guess again:"
	else
		echo "Congratulations!! You are Vanga!"
	fi
done
}

#Let's use our function
guessquantity
