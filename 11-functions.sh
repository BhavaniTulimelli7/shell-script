#!/bin/bash

USERID=$(id -u)

VALIDATE(){
    if[ $1 -ne 0 ]
    then 
        echo "Installing MySQL ... FAILURE"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi

}

if[ $USERID -ne 0 ]
then
    echo"ERROR:: You must have sudo access to execute this script"
    exit 1 #other than 0
fi



dnf installed list mysqld

if[ $? -ne 0 ]
then
    dnf install mysql -y
    VALIDATE $? "Installing MySQL"
else
    echo "MySQL is already ... INSTALLED"
fi

dnf installed list git

if [ $? -ne 0 ]
then
    dnf install git -y
    VALIDATE $? "Installing GIT"
else
    echo "Git is already ... INSTALLED"
fi