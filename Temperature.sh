#!/bin/bash -x


#Temperature conversion
read -p "Temperature in celcius: " c
F=$(($(($c * 9/5))+32))
echo $F



read -p "Temperature in Fahrenheit: " f
c=$(($((f-32))*5/9))
echo $c
