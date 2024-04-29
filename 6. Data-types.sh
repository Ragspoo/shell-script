#!/bin/bash

Num1=$1
Num2=$2

Sum=$(($Num1 + $Num2))

echo "Addition of two numbers: $Sum"

#Special characters in shellscript
echo "How many args passed: $#" #to print how many arguments are passed we use $#
echo "All args passed: $@" # $@-> to print all the arguments
echo "script name: $0" # #0-> to print the script name