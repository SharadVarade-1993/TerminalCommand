#!/bin/bash -x

read -p "Enter the base value: " b
read -p "Enter the Exponent value: " e

t=1
for (( i=1; i<=$e; i++ ))
do
	t=$((t* $b));
done

echo $t
