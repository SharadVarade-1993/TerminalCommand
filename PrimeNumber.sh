#!/bin/bash -x

read -p "Enter the Prime Number: " n



for (( i=2;i<=n;i++ ))
do
 		r=n%i;
		if [ r==0 ]
		then
				break;
		fi
done

if [ i==n ]
then
		echo "Number is prime";
else
		echo "Number is not prime";
fi
