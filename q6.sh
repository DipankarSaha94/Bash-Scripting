#!/bin/bash
arr=("$@")
var=`echo ${arr[0]}`
for ((i=1;i<${#arr[@]};i++));
do
val=`echo ${arr[$i]}`
var=`echo $var^$val | bc`
done
echo $var
