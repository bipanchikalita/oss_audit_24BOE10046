#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]; then
        PERM=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => $PERM | Size: $SIZE"
    else
        echo "$DIR not found"
    fi
done

# Check Python config directory
if [ -d "/etc/python3" ]; then
    echo "Python config exists:"
    ls -ld /etc/python3
fi
