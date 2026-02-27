#!/bin/bash

# Configuration
LOG_FILE="/var/log/user_sessions.log"

# Log user sessions
echo "=== User Sessions - $(date) ===" >> "$LOG_FILE"
who >> "$LOG_FILE"
echo "---------------------------" >> "$LOG_FILE"