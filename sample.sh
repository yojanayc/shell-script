#!/bin/bash

# Define colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'  # No Color (Reset)

# Success message
echo -e "${GREEN}Success: Operation completed successfully!${NC}"

# Warning message
echo -e "${YELLOW}Warning: This is a warning message.${NC}"

# Error message
echo -e "${RED}Error: Something went wrong!${NC}"
