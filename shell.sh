#!/bin/bash -x
echo welcome to employee wage
RATE=20;
maxWork=4;
PART_TIME=1;
FULL_TIME=2;
isAbsent=0;
FULL_TIME_HR=8;
PART_TIME_HR=4;
NUM_WORKING_DAYS=20
#Variables
totalEmpHr=0
totalWorkingDays=0

function getWorkingHours(){
		case $1 in 
			$FULL_TIME)
				workHours=8
				;;
			$PART_TIME)
				workHours=4
				;;
			$isAbsent)
				workHours=0
				;;

		esac
			echo $workHours
	}

		while [[ $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
		do
			((totalWorkingDays++))
			workHours="$( getWorkingHours $((RANDOM%3)) )"	
			totalWorkHours=$(( $totalWorkHours + $workHours ))
		done
			echo  "Employee Full Time  Wages" totalSalary=$(( $totalWorkHours*$RATE ))

