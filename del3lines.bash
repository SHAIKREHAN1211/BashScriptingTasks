
#!/usr/bin/env bash

FILE="sample.txt"

if [ -f "$FILE" ]; then
    sed -i '$d' "$FILE"
    sed -i '$d' "$FILE"
    sed -i '$d' "$FILE"

    echo "Last 3 lines deleted successfully."
else
    echo "File does not exist."
fi
