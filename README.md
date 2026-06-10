# server-performance-status
Server performance monitoring script built with Bash. It provides a quick snapshot of CPU usage, memory usage, disk usage, and the top 5 processes consuming CPU and memory.


# How to run
git clone: https://github.com/joaopedrofariaferreira/server-performance-status.git

# Give execution permission
chmod +x server-stats.sh

#Run
./server-stats.sh

#Exemple
===== CPU USAGE =====
CPU usage: 5.63% user, 9.20% sys, 85.15% idle

===== MEMORY USAGE =====
PhysMem: 23G used, 75M unused.

===== DISK USAGE =====
Used: 17Gi | Free: 127Gi | Used %: 12%

===== TOP 5 CPU PROCESSES =====
USER            PID      %CPU     %MEM
joaopedro       718      15.9     0.3
joaopedro       662      6.7      0.1

===== TOP 5 MEMORY PROCESSES =====
USER            PID      %CPU     %MEM
joaopedro       2101     0.0      2.7
joaopedro       707      0.8      2.4

What I Practiced

* Bash scripting
* Linux/macOS command-line tools
* Process monitoring
* CPU, memory, and disk inspection
* Pipes and text processing with awk, grep, sort, and head
