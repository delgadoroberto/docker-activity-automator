#!/usr/bin/env bash

# Enable strict mode for robust scripting
set -euo pipefail

LOG_FILE="activity_log.txt"

echo "==========================================" >> "$LOG_FILE"
echo "Execution Date: $(date -u)" >> "$LOG_FILE"
echo "Status: Container executed successfully." >> "$LOG_FILE"
echo "==========================================" >> "$LOG_FILE"

echo "Log updated successfully."
