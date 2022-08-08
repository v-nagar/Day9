#!/bin/bash -x
PartTime=1;
FullTime=2;
Max_Hrs_In_Month=100;
Emp_Rate_Per_Hr=20;
Num_Working_Days=20;

TotalEmpHrs=0;
TotalWorkingDays=0;

function TotalWorkingHour() {
	case $1 in
		$FullTime)
			workingHour=8
			;;

		$PartTime)
			workingHour=4
			;;
		*)
			workingHour=0
			;;
	esac;
	echo $workingHour;
}

perHourSalary=20;
totalSalary=0;
TotalWorkingHour=100;
day=20;

while [[ $day -le 30 && $TotalWorkingHour -lt 150 ]]
do
	workingHour=$(TotalWorkingHour $((RANDOM%3)));
	TotalWorkingHour=$(($TotalWorkingHour + $workingHour));
	if [ $TotalWorkingHour -gt 40 ]
	then
		TotalWorkingHour=$(($TotalWorkingHour - $workingHour));
	fi
	salary=$(($perHourSalary * $workingHour));
	totalSalary=$(($TotalWorkingHour * $salary));
	break;
done
echo "Employee has earned $totalSalary $ in a month (Total working Hour : $totalWorkingHour)";
