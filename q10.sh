#!/bin/bash
read s
read n
read v
for (( i=1; i<"$n"; i++ ))
do
	read num
	if test "$s" == "*"
	then
		v=`echo $v*$num | bc`
	elif test "$s" == "-"
	then 
		v=`echo $v-$num | bc`
	elif test "$s" == "+"
	then
		v=`echo $v+$num | bc`
	else
		v=`echo $v/$num | bc -l`
	fi	
done
if test "$s" == "/"
then
printf "%.4f" $(echo $v)
else
echo "$v"
fi
