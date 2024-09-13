#!/bin/bash

# Run a command
ls /non_existent_directory

# Check the exit status
if [ $? -eq 0 ]; then
    echo "Command executed successfully."
else
    echo "Command failed with exit status $?."
fi