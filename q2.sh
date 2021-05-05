#!/bin/bash
read s
str=`command -v $s`
if [ "$str" == "" ]; then
	echo "No"
else
	echo "Yes"
	echo $s
fi
