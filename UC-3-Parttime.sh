#!/bin/bash -x

isparttime=1
isfulltime=2
empRatePerHr=20
randomcheck=$((RANDOM%3))

if [ $isparttime -eq $isfulltime ]
then
	empHrs=4
elif [ $isfulltime -eq $randomcheck ]
then
	empHrs=8
else
	empHrs=0
fi

Salary=$(($empHrs*$empRatePerHr))

