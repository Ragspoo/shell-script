#!/bin/bash

id=$(id -u)

if [ $id -ne 0 ]
then 
    echo "ERR: Please run the script wuth root acces "
    exit 1 #to quit here if it fail, we can give rather than 0
else
    echo "You are the root user "
fi

yum install mysql -y

if [ $? -ne 0 ]
then 
    echo "ERR: Installing mysql failed "
    exit 1
else  
    echo "Installation mysql... SUCCESS"
fi

yum install git -y

if [ $? -ne 0 ]
then 
    echo "ERR: Installing git failed "
    exit 1
else  
    echo "Installation git... SUCCESS"
fi