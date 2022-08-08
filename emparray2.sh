#!/bin/bash -x

PartTime=1;
FullTime=2;
Max_Hrs_In_Month=10;
Emp_Rate_Per_Hr=20;
Num_Working_Days=20;

TotalEmphr=0;
TotalWorkingDays=0;

function getWorkHrs() {
   local $empcheck=$1
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
   echo $empHrs
}

function getEmpWage() {
   local empHrs=$1
   echo $(($empHrs*$Emp_Rate_Per_Hr))
}

function getEmpWageperday() {
   local empHrs=$1
   echo $(($empHrs*$Emp_Rate_Per_Hr))
}

while [[ $TotalEmphr -lt $Max_Hrs_In_Month &&
	 $TotalWorkingDays -lt $Num_Working_Days ]]
do
   ((TotalWorkingDays++))
   empcheck=$((RANDOM%3));
   empHrs="$( getWorkHrs $empcheck )"
   TotalEmphr=$(($TotalEmphr+$empHrs))
   dailyWage[$TotalWorkingDays]="$( getEmpWage $empHrs )"
   dayWage[$TotalWorkingDays]="$( getEmpWageperday $empHrs )"
done

TotalSalary=$(($TotalEmphr*$Emp_Rate_Per_Hr));
echo ${dailyWage[@]}
echo ${daywage[@]}
