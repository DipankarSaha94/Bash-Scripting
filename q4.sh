#!/bin/bash
read s
str=`echo $s | tr '(' ' ' | tr ')' ' '`
str="($str)"
str=`echo $str | sed 's/^../(/;s/..$/)/'`
echo $str
