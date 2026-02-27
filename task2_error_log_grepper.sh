#!/bin/bash

# Configuration
LOG_DIR="/var/log"
ERROR_PATTERNS=("ERROR" "CRITICAL" "FAILED")
REPORT_FILE="/tmp/error_report.txt"

# Scan logs for errors
echo "=== Error Report - $(date) ===" > "$REPORT_FILE"
for pattern in "${ERROR_PATTERNS[@]}"; do
    grep -r "$pattern" "$LOG_DIR" >> "$REPORT_FILE"
done

# Display report
cat "$REPORT_FILE"