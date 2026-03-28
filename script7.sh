#!/bin/bash

dirs=("/home" "/etc" "/var" "/usr" "/tmp")

echo "================ Disk and Permission Auditor ================"
echo ""

for dir in "${dirs[@]}"
do
    if [ -d "$dir" ]; then
        space=$(df -h "$dir" | awk 'NR==2 {print $3 " used of " $2}')
        owner=$(ls -ld "$dir" | awk '{print $3}')
        perms=$(ls -ld "$dir" | awk '{print $1}')

        echo "Directory : $dir"
        echo "Space Used: $space"
        echo "Owner     : $owner"
        echo "Permissions: $perms"
        echo "------------------------------------------------------------"
    else
        echo "Directory $dir does not exist."
        echo "------------------------------------------------------------"
    fi
done
