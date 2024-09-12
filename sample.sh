#!/bin/bash

echo "Script name: $0"
echo "First argument: $1"
echo "Number of arguments: $#"
echo "All arguments (\$@): $@"
echo "All arguments (\$*): $*"
echo "Last command exit status: $?"
echo "Current process ID: $$"
echo "Process ID of last background command: $!"

# Example of using "$@"
for arg in "$@"; do
  echo "Argument: $arg"
done
