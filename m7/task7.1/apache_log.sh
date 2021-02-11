#!/bin/bash


echo -e "\nFirst method:"

sed -e 's/\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\).*$/\1/' -e t -e d apache.log | sort | uniq -c | sort -nr | head -n 1 | awk '{print "Count of ip: " $1 " ip: " $2 }'

echo -e "\nSecond method:"

cut -d" " -f1 apache.log | sort | uniq -c | sort -nr | head -n 1 | awk '{print "Count of ip: " $1 " ip: " $2}'
