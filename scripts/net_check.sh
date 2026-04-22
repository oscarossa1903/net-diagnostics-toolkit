#!/bin/bash

set -e

source ../config/config.sh

TARGET=${1:-$DEFAULT_TARGET}
DATE=$(date)

echo "checking $TARGET at $DATE" >> $LOG_FILE

./latency.sh $TARGET >> $LOG_FILE
./packet_loss.sh $TARGET >> $LOG_FILE
traceroute $TARGET >> $LOG_FILE

echo "----------------" >> $LOG_FILE
