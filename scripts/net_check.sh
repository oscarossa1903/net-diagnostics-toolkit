#!/bin/bash

set -e

source ../config/config.sh

if [ "$1" == "--help" ]; then
  echo "Usage: ./net_check.sh <target>"
  exit 0
fi


TARGET=${1:-$DEFAULT_TARGET}
DATE=$(date "+%Y-%m-%d %H:%M:%S")

echo "Diagnostics started for xxx  $TARGET at $DATE" >> $LOG_FILE


./latency.sh $TARGET >> $LOG_FILE
./packet_loss.sh $TARGET >> $LOG_FILE
traceroute $TARGET >> $LOG_FILE

echo "----------------" >> $LOG_FILE
