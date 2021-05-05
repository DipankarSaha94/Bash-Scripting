#!/bin/bash
read n
ps -au | tr -s ' ' | cut -d ' ' -f2 | head -n -1 | tail -n +2 > pid.txt
sort -n pid.txt | head -$n

