#!/bin/bash -x

isParttime=1
isFulltime=2
empRatePerHr=50
totalsalary=0
numofworkingdays=10
maxRateinMonth=100

totalEmpHr=0
totalworkingdays=0

while [[ $totalEmpHr -lt $maxRateinMonth &&
	$totalworkingdays -lt $numofworkingdays ]]
do
	((totalworkingdays++))
	randomcheck=$((RANDOM%3))
        case $randomcheck in
                        $isParttime )
                                empHrs=4
                        ;;
                        $isFulltime )
                                empHrs=8
                        ;;
                        *)
                                empHrs=0
                        ;;
   esac

	totalEmpHr=$(($totalEmpHr+$empHrs))
done

totalsalary=$(($totalEmpHr*$empRatePerHr))
