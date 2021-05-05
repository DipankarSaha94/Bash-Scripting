#!/bin/bash
#HISTFILE=~/.bash_history
#set -o history
cat ~/.bash_history | tr -s ' ' | cut -d ' ' -f3 | sort | uniq -c | sort -rn | tail -10 | perl -lane 'print $F[1], "\t", $F[0]'
