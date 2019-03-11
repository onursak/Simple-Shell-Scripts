#!/bin/bash

filename=$1  #Assigning argument which is on the command line to the filename variable

while read line  #Creating loop for reading integers line by line from the file
do
   for (( c=0; c<$line; c++ ))  
   do  
      echo -n "*"
   done
echo #This is for the new line
done < $filename
