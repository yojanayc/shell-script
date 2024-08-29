#!/bin/bash

USER=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
SCRIPT_NAME=$(echo $0 | cut -d "." -f1)
LOGFILE=/tmp/$SCRIPT_NAME-$TIMESTAMP.log
R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

VALIDATE(){
   if [ $1 -ne 0 ]
   then
        echo -e "$2...$R FAILURE $N"
        exit 1
    else
        echo -e "$2...$G SUCCESS $N"
    fi
}

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