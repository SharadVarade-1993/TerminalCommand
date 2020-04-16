#!/bin/bash -x
:'
x=100;
y=100;
z=$(($x + $y))
echo $z
'

:'
read -p "Enter the first number: " x
read -p "Enter the second number: " y
z=$(($x + $y))
echo $z
'


:'
#program on addition and multiplication
read -p "Enter the value of A: " a
read -p "Enter the value of B: " b
read -p "Enter the value of C: " c
z=$(($a + $b * $c))
echo $z
'


:'
#program on modules and addition
read -p "Enter the value of A: " a
read -p "Enter the value of B: " b
read -p "Enter the value of C: " c
z=$(($a % $b + $c))
echo $z
'


:'
#program on addition and division
read -p "Enter the value of A: " a
read -p "Enter the value of B: " b
read -p "Enter the value of C: " c
z=$(($c + $a / $b))
echo $z
'

#program on multiplication and addition
read -p "Enter the value of A: " a
read -p "Enter the value of B: " b
read -p "Enter the value of C: " c
z=$(($c * $a + $b))
echo $z

