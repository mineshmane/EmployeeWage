#!/bin/bash -x
echo welcome to employee wage
isPresent=1;
isAbsent=0;
RATE=20;
wgaes=0;
PART_TIME=0;
FULL_TIME=1;
FULL_TIME_HR=8;
PART_TIME_HR=4;
function getWorkingHours(){
		case $1 in 
			$FULL_TIME)
				workHours=8
				;;
			$PART_TIME)
				workHours=4
				;;

		esac
		echo $workHours
}

attendance=$((RANDOM%2))
	if (( isPresent == attendance  ))
	then
			workHours="$( getWorkingHours $((RANDOM%2)) )"	
			wages=$(( $RATE * $workHours ))
			echo  "Employee Full Time  Wages" $wages
		else
		echo "Employee is absent wages is zero" $wages
	fi
