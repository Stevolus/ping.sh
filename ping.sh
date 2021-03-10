#!/bin/bash
# Program name: pingall.sh
date
#next line assumes the pressance of a file called hosts.txt
#is in the same directory the script is being run from
#with a hostname/IP on each line.
cat hosts.txt |  while read output
do
    ping -c 1 "$output" > /dev/null
    if [ $? -eq 0 ]; then
    echo "node $output is up"
    else
    echo "node $output is down"
    fi
done
