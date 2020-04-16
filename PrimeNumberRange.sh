
#!/bin/bash -x

#program on prime number range
read -p "Enter the starting number: " start
read -p "Enter the ending number: " end

for (( i=$start; i<=$end; i++ ))
do
		r=0;

		for (( j=1; j<=$i; j++ ))
		do
			if [ $(($i % $j)) == 0 ];
			then
					r=$((++r));
			fi
		done

		if [ $r == 2 ];
		then
				echo $i
		fi
done
