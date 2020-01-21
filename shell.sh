#!/bin/bash -x
	echo welcome to employee wage
	echo  welcome to in attendace usecadse
isPresent=1;
isAbsent=0;
RATE=20;
wgaes=0;
PART_TIME=0;
FULL_TIME=1;
FULL_TIME_HR=8;
PART_TIME_HR=4;
attendance=$((RANDOM%2))
employeeType=$((RANDOM%2))
	if (( isPresent == attendance  ))
	then
		if [ $employeeType ==  $FULL_TIME  ] 
		then
			wages=$(( $RATE * $FULL_TIME_HR ))
			echo  "Employee Full Time  Wages" $wages
		else
			wages=$(( $RATE * $PART_TIME_HR ))
			echo " PArtime Employee " $wagesxy
		fi	
	else
		echo "Employee is absent wages is zero" $wages
	fi

