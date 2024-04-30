#!/bin/bash

ID=$(id -u)
Time=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

Logfile="/tmp/$0-$Time.log"

echo "script strtaed executing at $Time" &>> Logfile

Validate(){
    if [ $1 -ne 0 ]
    then
        echo -e "ERR: $2... $R Failed $N"
        exit 1
    else
        echo -e "$2... $G Success $N"
    fi
}

if [ $ID -ne 0 ]
then
    echo -e "$R ERR: Please run with root user $N"
    exit 1
else
    echo " you are the root user"
fi

for package in $@
do 
    yum list installed $package &>> Logfile
    if [ $? -ne 0 ]
    then
        yum install $package -y &>> Logfile
        Validate $? "Installation of $package "
    else
        echo -e "$package is already installed... $Y Skipping $N"
    fi
done