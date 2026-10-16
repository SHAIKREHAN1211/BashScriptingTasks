
#!/usr/bin/env bash

DIR="/home/ec2-user/mydirectory"

if [ -d "$DIR" ]; then
    echo "Directory already exists."
else
    mkdir -p "$DIR"
    echo "Directory created successfully."
fi
