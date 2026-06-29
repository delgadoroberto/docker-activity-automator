#!/usr/bin/env bash

# Enable strict mode for robust scripting
set -euo pipefail

LOG_FILE="activity_log.txt"

# Gather system metrics
OS_INFO=$(grep PRETTY_NAME /etc/os-release | cut -d'"' -f2)
KERNEL_INFO=$(uname -r)
DISK_USAGE=$(df -h / | awk 'NR==2 {print $5}')

echo "==========================================" >> "$LOG_FILE"
echo "Execution Date : $(date -u)" >> "$LOG_FILE"
echo "Operating System: $OS_INFO" >> "$LOG_FILE"
echo "Kernel Version  : $KERNEL_INFO" >> "$LOG_FILE"
echo "Disk Usage (/)  : $DISK_USAGE" >> "$LOG_FILE"
echo "Status          : System health check completed." >> "$LOG_FILE"
echo "==========================================" >> "$LOG_FILE"

echo "System metrics collected and log updated successfully."
