#!/bin/bash -x

isparttime=1
isfulltime=2
empRatePerHr=20
randomcheck=$((RANDOM%3))

case $randomcheck in
			$isfulltime )
				empHrs=8
			;;
			$isfulltime )
				empHrs=4
			;;
			*)
				empHrs=0
			;;
esac
salary=$(($empHrs*$empRatePerHr))
