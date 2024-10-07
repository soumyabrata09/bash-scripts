#!/bin/bash

#Generate System Information Report
echo "System Information Report"
echo "========================="
echo "Hostname: $(hostname)"
echo "Uptime: $(uptime)"
echo "Memory Usage: $(vm_stat)"
echo "Disk Usage: $(df -h)"
echo "CPU info: $(sysctl -n machdep.cpu.brand_string)"
echo "OS Version: $(sw_vers)"
