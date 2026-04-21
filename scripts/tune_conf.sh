#!/bin/bash
# Simple RAM-based tuning script
TOTAL_RAM=$(free -m | awk '/^Mem:/{print $2}')
SHARED_BUFFERS=$((TOTAL_RAM / 4))
echo "Setting shared_buffers to ${SHARED_BUFFERS}MB"