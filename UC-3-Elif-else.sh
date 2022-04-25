#!/bin/bash -x

isparttime=1
isfulltime=2
empRPH=20
randomcheck=$((RANDOM%3))

if [ $isparttime -eq $randomcheck ]
then
    empHrs=4
elif [ $isfulltime -eq $randomcheck ]
then
    empHrs=8
else
    empHrs=0

fi

salary=$(($empHrs*$empRPH))
