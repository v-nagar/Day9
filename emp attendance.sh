#!/bin/bash -x

emp=1;
randomcheck=$(( RANDOM%2 ));

if [ $emp -eq $randomcheck ];
then
	echo "Employee is Present";
else
	echo "Employee is Absent";
fi

