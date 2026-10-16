
#!/bin/bash

THRESHOLD=80
EMAIL="shaikrehan12611@example.com"

CPU_IDLE=$(top -bn1 | grep "Cpu(s)" | awk '{print $8}' | tr -d '%')
CPU_USAGE=$(awk -v idle="$CPU_IDLE" 'BEGIN {printf "%.0f", 100-idle}')

echo "CPU Usage: $CPU_USAGE%"

if [ "$CPU_USAGE" -gt "$THRESHOLD" ]; then
    echo "CPU usage is above 80%: $CPU_USAGE%" \
    | mail -s "CPU Usage Alert" "$EMAIL"
    echo "CPU alert email sent."
else
    echo "CPU usage is normal."
fi
