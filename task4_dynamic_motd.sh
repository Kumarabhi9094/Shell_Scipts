#!/bin/bash

# Basic MOTD updater
echo "Welcome to $(hostname)" > /etc/motd
echo "Date: $(date)" >> /etc/motd
echo "Uptime: $(uptime -p)" >> /etc/motd
cat /etc/motd
