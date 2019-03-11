#!/bin/bash


echo "Enter a sequence of numbers followed by \"end\" "
counter=0 #Creating counter variable to understand taking one integer or not
while :
do
	read num #For reading input line by line from the user

	if [ "$num" = "end" ]; 
	then
		break
	fi
	
	if (($counter == 0 )); #If we take just one integer normally it is max
	then
		max=$num
		((counter++))
		continue
	fi

	if (( $num > $max )); #If current input greater than max then assign num to the max
	then
		max=$num
	else   
		continue 
	fi
done

echo "Maximum: $max" 
