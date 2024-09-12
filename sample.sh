#!/bin/bash

# Define the directory path
DIR="/myfolder"

# Check if the directory already exists
if [ ! -d "$DIR" ]; then
    echo "Directory $DIR does not exist. Creating it now..."
    mkdir "$DIR"
    echo "Directory $DIR created."
else
    echo "Directory $DIR already exists. No action needed."
fi