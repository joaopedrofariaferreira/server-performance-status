#!/bin/bash


echo "===== CPU USAGE ====="
top -l 1 | grep "CPU usage"
echo ""
echo "===== MEMORY USAGE ====="
top -l 1 | grep "PhysMem"
echo ""
echo "===== DISK USAGE ====="
df -h / | awk 'NR==2 {print "Used: "$3" | Free: "$4" | Used %: "$5}'
echo ""
echo "===== TOP 5 CPU PROCESSES ====="
ps aux | sort -nrk 3 | awk '
NR==1 {printf "%-15s %-8s %-8s %-8s\n", "USER", "PID", "%CPU", "%MEM"} 
NR>1 {printf "%-15s %-8s %-8s %-8s\n", $1, $2, $3, $4}' | head -6
echo ""
echo "===== TOP 5 MEMORY PROCESSES ====="
ps aux | sort -nrk 4 | awk '
NR==1 {printf "%-15s %-8s %-8s %-8s\n", "USER", "PID", "%CPU", "%MEM"}
NR>1 {printf "%-15s %-8s %-8s %-8s\n", $1, $2, $3, $4}' | head -6