#!/bin/bash -x

PartTime=1;
FullTime=2;
TotalSalary=0;
emprateperhr=20;
numworkingdays=20;

for (( day=1; day<=$numworkingdays; day++ ))
do
	empcheck=$((RANDOM%3));
		case $empcheck in
			$FullTime)
				empHrs=8
				;;
			$PartTime)
				empHrs=4
				;;
			*)
				empHrs=0
				;;
		esac

		Salary=$(($empHrs*$emprateperhr));
		TotalSalary=$(($TotalSalary+$Salary));
done

