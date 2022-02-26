#!/bin/bash

function getWorkingHour() {
	case $1 in
		$PRESENT)
			empHour=$WORKING_HOUR;
		;;

		$PART_TIME)
			empHour=$((WORKING_HOUR/2));
		;;

		*)
			empHour=0;
		;;
	esac;
	echo $empHour;
}

PRESENT=1;
PART_TIME=2;
WAGE_PER_HOUR=20;
MAX_WORKING_DAY=20;
MAX_WORKING_HOUR=40;
WORKING_HOUR=8;

totalWorkingHour=0;
day=0;
while [[ $day -lt $MAX_WORKING_DAY && $totalWorkingHour -lt $MAX_WORKING_HOUR ]]
do
	if [ $totalWorkingHour -eq $((MAX_WORKING_HOUR-WORKING_HOUR/2)) ]
	then
		isPresent=$PART_TIME;
	else
		isPresent=$((RANDOM%3));
	fi
	workingHour=$(getWorkingHour $isPresent);
	totalWorkingHour=$((totalWorkingHour+workingHour));
	((day++));
done

totalWage=$((totalWorkingHour*WAGE_PER_HOUR));

echo "Employee Wage : $"$totalWage "USD";
echo "Total working hour : "$totalWorkingHour;
echo "Total working day : "$day;
