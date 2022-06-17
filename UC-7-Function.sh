#!/bin/bash -x

isParttime=1
isFulltime=2
empRatePerHr=20
totalsalary=0
numofworkingdays=20
maxRateinMonth=100

totalEmpHr=0
totalworkingdays=0


function getworkingHrs()
{
	case $randomcheck in
			$isFulltime )
				empHrs=8
			;;
			$isParttime )
				empHrs=4
			;;
			*)
				empHrs=0
			;;
	esac
}
while [[ $totalEmpHr -lt $maxRateinMonth &&
        $totalworkingdays -lt $numofworkingdays ]]
do
        ((totalworkingdays++))
        randomcheck=$((RANDOM%3))
	getworkingHrs $randomcheck
        totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalsalary=$(($totalEmpHr*$empRatePerHr))


