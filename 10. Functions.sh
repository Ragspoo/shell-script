#!/bin/bash

Id=$(id -u)

Validate(){
    if [ $1 -ne 0 ]
    then
        echo "ERR: $2... Failed"
        exit 1
    else
        echo "$2... Success"
    fi
}

if [ $Id -ne 0 ]
then
    echo "ERR: Please run with root access"
    exit 1
else
    echo "You are root user"
fi

yum install mysql -y

Validate $? "installing mysql"

yum install git -y

Validate $? "installing git"