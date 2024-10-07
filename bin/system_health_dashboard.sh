#!/bin/bash

# Function to display CPU usage
monitor_cpu() {
    echo -e "CPU Usage:\n"
    top -bn1 | grep "Cpu(s)" | \
    sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | \
    awk '{print 100 - $1"%"}'
    echo "------------------------"
}

# Function to display Memory usage
monitor_memory() {
    echo -e "Memory Usage:\n"
    free -h | grep Mem | awk '{print "Used: "$3" / Total: "$2}'
    echo "------------------------"
}

# Function to display Disk usage
monitor_disk() {
    echo -e "Disk Usage:\n"
    df -h | grep '^/dev/' | awk '{print $1": "$5" used"}'
    echo "------------------------"
}

# Function to display Network activity
monitor_network() {
    echo -e "Network Activity:\n"
    ifconfig | grep 'RX packets' | awk '{print "Received: "$3" packets"}'
    ifconfig | grep 'TX packets' | awk '{print "Transmitted: "$3" packets"}'
    echo "------------------------"
}

# Main loop to update the dashboard every 5 seconds
while true; do
    clear
    echo "System Health Dashboard"
    echo "========================"
    monitor_cpu
    monitor_memory
    monitor_disk
    monitor_network
    sleep 5
done
