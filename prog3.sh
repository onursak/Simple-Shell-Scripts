#!/bin/bash


if [ "$1" != "" ];  #If optional argument is given then change the directory, if it's not given then work on current directory
then
	cd $1	
fi

touch sizes.txt   #Created temporary file sizes.txt which keeps the sizes and filenames

du -sh * > sizes.txt   #Writing sizes and filenames into the sizes.txt

deletedfiles=0

while read line
do
	string=($line) #Taking line as an array for splitting size and filename
    	size="${string[0]}"
	stringlength=${#string[@]}
    	filename="${string[@]: 1:$stringlength}"
	if [ "$size" = "0" ];  
	then
		rm "$filename"
		((deletedfiles++)) #Incrementing deletedfiles
	fi
done < sizes.txt

rm sizes.txt   #Removing the temporary sizes.txt

echo "you deleted $deletedfiles files from the directory!"
