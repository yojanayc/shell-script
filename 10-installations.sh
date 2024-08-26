#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then 
    echo "Please run the script with root access"
else
    echo "You are a super user"
fi

dnf install mysql -y

if [ $? -ne 0 ]
then
    echo "Installation of mysql...FAILURE"
    exit 1
else
    echo "Installation of mysql...SUCCESS"
fi

dnf install git -y

if [ $? -ne 0 ]
then
    echo "Installation of git...FAILURE"
    exit 1
else
    echo "Installation of Git...SUCCESS"
fi

echo "is script proceeding?"