#!/bin/bash -x

PartTime=1;
FullTime=2;
Emprateperhr=20;
randomcheck=$(( RANDOM%3 ));

if [ $PartTime -eq $randomcheck ];
then
	emphrs=8;

elif [ $FullTime -eq $randomcheck ];
then
	emphrs=12;

else 
	emphrs=0;

fi 
	salary=$(( $emphrs*$Emprateperhr ));
