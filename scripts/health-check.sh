#!/bin/bash

echo "===== Linux Server Health Check ====="
echo ""

echo "Hostname:"
hostname

echo ""
echo "Uptime:"
uptime

echo ""
echo "CPU Load:"
uptime | awk -F'load average:' '{ print $2 }'

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "Running Services:"
systemctl --type=service --state=running --no-pager | head -15

echo ""
echo "===== Health Check Complete ====="
