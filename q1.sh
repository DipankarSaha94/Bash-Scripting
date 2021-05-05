#!/bin/bash

#a.
mkdir Assignment1

cd Assignment

#b.
touch lab{1..5}.txt

#c.
rename 's/.txt/.c/' *.txt

#d.
ls -lShr | tail -n +2 | head -n -0

#e. Below Command needs to be executed inside Home Directory
cd

find . -maxdepth 2

#f. Below command needs to be executed inside Assignment1 folder
cd/Desktop/Assignment1

find . -type f -name "*.txt" | xargs realpath
