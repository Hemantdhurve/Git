#!/bin/bash -x

isParttime=1
isFulltime=2
empRatePerHr=50
totalsalary=0
numofworkingDays=10

for (( day=1; day<=$numofworkingDays; day++ ))
do
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
	salary=$(($empHrs*$empRatePerHr))
	totalsalary=$(($totalsalary+$salary))
done
