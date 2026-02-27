#!/bin/bash

echo "=== Last 5 System Boots ==="
last reboot | head -n 5

