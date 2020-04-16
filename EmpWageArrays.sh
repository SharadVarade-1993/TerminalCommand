#!/bin/bash -x

Is_Part_Time=1;
Is_Full_Time=2;
Max_Hrs_In_Month=10;
Emp_Rate_Per_Hr=20;
Num_Working_Days=20;

#variabls
totalWorkHr=0;
totalWorkingDays=0;

function getWorkingHr(){
		case $1 in
				$Is_Full_Time)
						empHrs=8
						;;
				$Is_Part_Time)
						empHrs=4
						;;
				*)
						empHrs=0
						;;
		esac
		echo $empHrs
}

function calcDailyWage(){
	local workHrs=$1
	wage=$(($workHrs*$Emp_Rate_Per_Hr))
	echo $wage
}
while [[ $totalWorkHr -lt $Max_Hrs_In_Month &&
			$totalWorkingDays -lt $Num_Working_Days ]]
do
		((totalWorkingDays++))
		workHours="$( getWorkingHr $((RANDOM%3)) )"
		totalWorkHr=$(($totalWorkHr + $workHours))
		empDailyWage[$totalWorkingDays]="$( calcDailyWage $workHours )"
done

totalSalary=$(( calcDailyWage  $totalWorkHr ))
echo "Daily Wage" S{empDailyWage[@]}
