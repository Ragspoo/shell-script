#!/bin/bash

Number=$1

if [ $Number -gt 100 ] #space between the brackets are compulsory
then
    echo "given number $Number is greater than 100"
else
    echo "given number $Number is less than 100"
fi