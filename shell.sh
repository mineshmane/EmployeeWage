#!/bin/bash -x
echo welcome to employee wage
RATE=20;
maxWork=4;
PART_TIME=1;
FULL_TIME=2;
isAbsent=0;
FULL_TIME_HR=8;
PART_TIME_HR=4;
MAX_HRS_IN_MONTH=100;
NUM_WORKING_DAYS=20
#Variables
totalEmpHr=0
totalWorkingDays=0
# funtion to getting workhours 
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
		while [[ $totalWorkHours -lt $MAX_HRS_IN_MONTH && $totalWorkingDays -lt $NUM_WORKING_DAYS ]]
		do
			((totalWorkingDays++))
			workHours="$( getWorkingHours $((RANDOM%3)) )"	
			totalWorkHours=$(( $totalWorkHours + $workHours ))
		done
			echo  "Employee full Month wages " totalSalary=$(( $totalWorkHours*$RATE ))

