#!/bin/bash -x

PartTime=1;
FullTime=2;
Emprateperhr=20;
EmpCheck=$(( RANDOM%3 ));

case $empcheck in
	$PartTime)
		Emphrs=4
		;;
	$FullTime)
		Emphrs=8
		;;
	*)
	Emphrs=0
		;;
esac

salary=$(( $Emphrs*$Emprateperhr ));

