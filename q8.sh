#!/bin/bash
crontab $1
if test $? == 0
then
	echo "Yes"
else
	echo "No"
fi
