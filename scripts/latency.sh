#!/bin/bash

TARGET=$1
ping -c 5 $TARGET | grep 'avg'

