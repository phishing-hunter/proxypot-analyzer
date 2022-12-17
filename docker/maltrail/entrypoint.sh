#!/bin/bash
python /opt/maltrail/core/update.py
cat /root/.maltrail/trails.csv|sed -e "s/\"//g"| awk -F "," '{print "\""$1"\"" ","  "\""$2"\""}' > /root/.maltrail/blocklist.csv
