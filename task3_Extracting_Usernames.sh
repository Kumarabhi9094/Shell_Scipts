#!/bin/bash

OUTPUT_FILE="userlist.txt"


cut -d: -f1 /etc/passwd > "$OUTPUT_FILE"  # Extract usernames from /etc/passwd

echo "Usernames extracted and saved to $OUTPUT_FILE."