#!/bin/bash -x
	echo welcome to employee wage
	echo  welcome to in attendace usecadse
isPresent=1;
isAbsent=0;
attendance=$((RANDOM%2))
	if (( isPresent == attendance ))
	then
		echo EMployee Present
	else
		echo Employee is absent 
	fi

