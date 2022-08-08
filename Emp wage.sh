#!/bin/bash -x

Emp=1;
randomcheck=$(( RANDOM%2 ));

if [ $Emp -eq $randomcheck ];
then
	emprateperhour=20;
	emphours=8;
	salary=$(( $emphours*$emprateperhour ));
else
	salary=0;
fi

