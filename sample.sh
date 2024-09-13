#!/bin/bash

# Redirect stdout (1) and stderr (2) to logfile.log
exec > /home/ec2-user/logfile.log 2>&1

echo "Starting script..."
ls /nonexistent_directory  # This will log an error
echo "Script finished."