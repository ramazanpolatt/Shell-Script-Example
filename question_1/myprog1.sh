#!/bin/bash
#250201090 Ramazan Polat
while read -r current_line

	do
	
	count=0 # count variable is used to track the number of  concatenated * 
	
	starString="" 
	
	while [ $count -lt $current_line ]
	
		do
		
		starString="${starString}*" #* are concatenated
		
		((count++))
		
		done
		
	echo "$starString"
	
	done<$1


