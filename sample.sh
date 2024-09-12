#!/bin/bash
# Define the directory path
Sample="/home/shell"

# Check if the directory already exists
if [ ! -d "$Sample" ]; then
    echo "Directory $Sample does not exist. Creating it now..."
    mkdir "$DIR"
    echo "Directory $Sample created."
else
    echo "Directory $Sample already exists. No action needed."
fi