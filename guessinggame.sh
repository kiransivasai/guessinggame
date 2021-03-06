#!/usr/bin/env bash # (shebang) use bash to execute the program
# File: guessinggame.sh

function guessinggame {
	n_files=$(ls -l | wc -l)
	while true
	do
		echo "How many files are there in the current directory?"
		read response

		if ! [[ $response =~ ^[0-9]+$ ]]
		then
			echo "This is not a non-negative number. Please try again"
			
		elif [[ $response -ne $n_files ]]
		then
			if [[ $response -gt $n_files ]]
			then
				echo "This is more than number of files. Please try again."
			else
				echo "This is fewer than number of files. Please try again."
			fi
		else
			echo "Congratulations! You guessed it correctly."
			echo "Program ended."
			break
		fi
	done
}
guessinggame
