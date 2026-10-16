
#!/bin/bash

THRESHOLD=80
EMAIL="shaikrehan12611@example.com"

DISK_USAGE=$(df -P / | awk 'NR==2 {gsub("%","",$5); print $5}')

echo "Disk Usage: $DISK_USAGE%"

if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    echo "Disk usage is above 80%: $DISK_USAGE%" \
    | mail -s "Disk Usage Alert" "$EMAIL"
    echo "Disk alert email sent."
else
    echo "Disk usage is normal."
fi
