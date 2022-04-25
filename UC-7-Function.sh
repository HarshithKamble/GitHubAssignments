#!/bin/bash -x

isPartTime=1
isFullTime=2
maxRateInMonth=100
empRatePerHr=20
numOfWorkingDays=20
totalEmpHr=0
totalWorkingDays=0

function getWorkingHours()
{
	case $1 in
			$isPartTime )
			EmpHrs=4
			;;
			$isFullTime )
			EmpHrs=8
			;;
			*)
			EmpHrs=0
			;;
	esac
}
while [[ $totalEmpHr -lt $maxRateInMonth && $totalWorkingDays -lt $numOfWorkingDays ]]
do
	((totalWorkingDays++))
	getWorkingHours $((RANDOM%3))
	totalEmpHr=$(($totalEmpHr+$EmpHrs))
done

totalSalary=$(($totalEmpHr*$empRatePerHr))
