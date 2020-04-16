#!/bin/bash -x

Is_Part_Time=1;
Is_Full_Time=2;
Max_Hrs_In_Month=10;
Emp_Rate_Per_Hr=20;
Num_Working_Days=20;

#variabls
totalEmpHr=0;
totalWorkingDays=0;

function getWorkingHr(){
		case $empCheak in
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
while [[ $totalWorkHr -lt $Max_Hrs_In_Month &&
			$totalWorkingDays -lt $Num_Working_Days ]]
do
		((totalWorkingDays++))
		empHrs="$( getWorkingHr $((RANDOM%3)) )"
		totalWorkHr=$(($totalWorkHr + $empHrs))

done

totalSalary=$(($totalWorkHr*$Emp_Rate_Per_Hr))
