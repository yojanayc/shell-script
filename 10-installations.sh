#!/bin/bash

USER=$(id -u)

if [ $USER -ne 0 ]
then 
    echo "Please run the script with root access"
else
    echo "You are a super user"
fi