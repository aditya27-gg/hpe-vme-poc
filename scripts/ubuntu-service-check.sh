#!/bin/bash

echo "=== HPE VME GIT SCRIPT TEST ==="

echo
echo "Hostname:"
hostname

echo
echo "IP Address:"
hostname -I | awk '{print $1}'

echo
echo "Operating System:"
. /etc/os-release
echo "$PRETTY_NAME"

echo
echo "SSH Service:"
systemctl is-active ssh || true

echo
echo "QEMU Guest Agent:"
systemctl is-active qemu-guest-agent || true

echo
echo "Disk Usage:"
df -h /

echo
echo "Memory Usage:"
free -h

echo
echo "=== GIT SCRIPT EXECUTION SUCCESSFUL ==="
