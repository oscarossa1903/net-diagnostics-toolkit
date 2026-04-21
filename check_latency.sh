#!/bin/bash

TARGET=$1
DATE=$(date)

echo "checking $TARGET at $DATE" >> report.txt
ping -c 5 $TARGET >> report.txt
ping -c 5 $TARGET | grep 'avg' >> report.txt
traceroute $TARGET >> report.txt

echo "----------------" >> report.txt
