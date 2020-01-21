#!/bin/bash -x
	echo welcome to employee wage
	echo  welcome to in attendace usecadse
isPresent=1;
isAbsent=0;
RATE=20;
wgaes=0;
fullTime=8;
attendance=$((RANDOM%2))
	if (( isPresent == attendance ))
	then
			wages=$(( $RATE * $fullTime ))
		echo  "total Wages" $wages
	else
		echo "Employee is absent wages is zero" $wages
	fi

