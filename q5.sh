#!/bin/bash
read s
declare -l str=$s
rvs=`echo $str | rev`
if test $str = $rvs
then
echo "Yes"
else
echo "No"
fi
