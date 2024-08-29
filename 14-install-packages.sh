#!/bin/bash

USER=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log

if [ $USER -ne 0 ]
then 
    echo "Please run the script with root access"
else
    echo "You are a super user"
fi


for i in $@
do
    echo  "packages to install: $i"
    dnf list installed $i &>>$LOGFILE
    if [ $? -eq 0]
    then 
        echo "$i already installed...SKIPPING"
    else
        echo "$i not installed ....Need to install"
    fi
done 