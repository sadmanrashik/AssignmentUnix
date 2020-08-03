#!/usr/bin/env bash

function guessing {
	diff="$1"
	while [[ $diff -ne 0 ]]
		do

		echo "Guess the number of files- "
		read response

		no=$(ls -l | grep ^-|wc -l)
		diff=$(( $response - $no ))

		if [[ $response -gt $no ]]
		then
  		echo "too high"
		elif [[ $no -gt $response ]]
		then
  		echo "too low"
 		else  echo "correct"
		fi

		done

}

guessing 1