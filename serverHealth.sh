#!/bin/bash
echo "========================="
echo " server health report $(date)"
echo "========================"
disk=$(df -h / | awk 'NR==2 {print $5}')
echo "disk used = $disk"
ram=$(free -m | awk 'NR==2 {printf "%.2f%%",$3*100/$2}')
echo "ram used =  $ram"
Uptime=$(uptime -p)
echo "systeme Uptime : $Uptime "

