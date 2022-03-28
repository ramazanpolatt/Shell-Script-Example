#!/bin/bash
#250201090 Ramazan Polat


worker() # function is used to decrease the code size and increase the reusability
{
	
	if [ -d $DIR ] #checks if the DIR path is a valid directory or not
		then
		cd $DIR #change directory to use commands in that  directory with pipeline
		EMPTY_FILE_COUNT=$(ls  -l | find -size 0 | wc -l) #usage of find can be found at here www.techjourney.net/how-to-find-all-files-with-file-size-zero-0-bytes-in-a-directory-recursively/
		
		if [ $EMPTY_FILE_COUNT -eq 0 ] # if there is not any zero length file 
			then
		
			echo " 0 zero-length files are found at the directory $DIR"
		else
			
			ls  -l | find -size 0 | xargs rm #xargs is used to  convert input from standard input into arguments to a command input.
			echo "$EMPTY_FILE_COUNT zero-length files are removed from the directory: $DIR"
		
		fi 
		
		exit 0
		
	else
		echo "it is not a  valid directory exit status 1 "
		exit 1
	
	fi
		

}


if [ $# -eq 0 ] # no argument is given
	then
	DIR=$(pwd)	
	



else
	DIR=$1
	
fi
worker #functioncall


