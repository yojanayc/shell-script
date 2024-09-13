#!/bin/bash

LOGFILE="/home/ec2-user/logfile.log"

log() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" >> "$LOGFILE"
}

log "Script started"
# Some operations
log "Operation completed"
log "Script finished"
