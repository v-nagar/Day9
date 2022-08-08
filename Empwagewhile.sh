#!/bin/bash -x

perHourSalary=20;
workingHour=0;
totalSalary=0;
totalWorkingHour=100;
day=20;
while [[ $day -lt 30 && $totalWorkingHour -lt 150 ]]
do
        isPresent=$((RANDOM%3));
        case $isPresent in
                0)
                #echo "Employee is absent";
                workingHour=0;
                ;;

                1)
                #echo "Employee is present";
                workingHour=8;
                ;;

                2)
                #echo "Employee is working as part time";
                workingHour=4;
                ;;
        esac
        totalWorkingHour=$(($totalWorkingHour + $workingHour));
        if [ $totalWorkingHour -gt 40 ]
        then
                totalWorkingHour=$(($totalWorkingHour - $workingHour));
        fi
        salary=$(($perHourSalary * $workingHour));
        totalSalary=$(($totalWorkingHour * $salary));
	break;
        
done
echo "Employee has earned $totalSalary $ in a month (Total working Hour : $totalWorkingHour)";


