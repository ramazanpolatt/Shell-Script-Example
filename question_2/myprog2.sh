#!/bin/bash
#250201090 Ramazan Polat
#returns the user input in the Value variable
getValue()
{

read -p "" VALUE
	
}




echo "Enter a sequence of numbers followed by "end""
getValue
currentMax=$VALUE
IS_END=1 # IS_END variable is used to determine if the user is entered "end" or not
while [ $IS_END -eq 1 ]
	do
	getValue 
		if [ $VALUE == end ]
			then
			IS_END=0 
		else
			if [ $VALUE -gt $currentMax ] #We check if the currentMax is less than the given number if it is we update the currentMax
				
				then
				currentMax=$VALUE
			fi #end of the inner if
		fi #end of the outer if
	


	done


echo "Maximum number is :  $currentMax "
