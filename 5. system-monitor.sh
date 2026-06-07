#!/bin/bash
# Bonus: System Monitor Script
# Captures CPU usage, memory, disk usage and top 5 processes by memory
# Saves output to a timestamped log file

info_1() {

top -bn1 | grep "Cpu(s)"
top -bn1 | grep "MiB Mem"
df -h
ps aux | awk '{print $4}' | sort -rn | head -n5

}

date=$(date +%Y-%m-%d_%H-%M)

mkdir -p /home/log.d
touch /home/log.d/log.f$date

echo "$(info_1)" >> /home/log.d/log.f$date

