#!/bin/bash
LOG_DIR="/var/;og/sysinfo"
LOG_FILE="$LOG_DIR/system_info_$(date +'%Y-%m-%d').log"
CRON_JOB="0 0 * * * / usr/local/bin/system_info_logger.sh"
mkdir -p "$LOG_DIR"
Find "$LOG_DIR" -type f -name
"system_info_*.log" -mtime +7 -exec rm -f {} \;
{
  echo
"============================================"
echo "SYSTEM INFO LOG - $(date)"
echo
"============================================"
echo -e "\n[USER]"
whoami

echo -e "\n[DATE & TIME]"
date
 
echo -e "\n[UPTIME]"
uptime

echo -e "\n[DISK USAGE]"
free -h

echo -e "\n[TOP 10 PROCESSES BY MEMORY]"
ps aux --sort=-%mem | head -n 11
} >> "$LOG_FILE" 2>&1
echo " CORRECT System log created at: $LOG_FILE"
if ! crontab -l 2>/dev/null | grep -q
'System_info_logger.sh'; then
(crontab -l 2>/dev/null; echo
"$CRON_JOB") | crontab -
echo "TIME Added daily cron job for system info logging."
fi
