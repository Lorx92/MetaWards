#!/bin/bash

# $1 is the wards.o executable
# $2 is the parameters file name
# $3 is the starting lines in the parameters file name
# $COUNT is the line to be read from parameters file 

COUNT=$3
# echo $(($3+3)) 
# bash until loop
#until [ $COUNT -gt $(($3+2)) ]; do
until [ $COUNT -gt 99 ]; do
    echo $COUNT
    mkdir $COUNT
    cd $COUNT
    nohup ../$1 $RANDOM ../$2 $COUNT> /dev/null 
#    sleep 2
    cd ..
    let COUNT=COUNT+1
done
