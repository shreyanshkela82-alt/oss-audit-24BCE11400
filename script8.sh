#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Usage: $0 <logfile> <keyword>"
    exit 1
fi

logfile=$1
keyword=$2
count=0

while IFS= read -r line
do
    if echo "$line" | grep -q "$keyword"; then
        count=$((count + 1))
    fi
done < "$logfile"

echo "================ Log File Analyzer ================="
echo "Log file     : $logfile"
echo "Keyword      : $keyword"
echo "Occurrences  : $count"
echo "==================================================="
