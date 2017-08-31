#!/bin/bash

LOG_FILE=/tmp/log4-2.log

if [ ! -e $LOG_FILE ]; then
   touch $LOG_FILE
   echo "File $LOG_FILE createdat: $(date)"
fi

if [ ! -w $LOG_FILE ]; then
   echo "$LOG_FILE does not have write permission"
   exit 1
fi

date >> $LOG_FILE
who >> $LOG_FILE
ps -ef >> $LOG_FILE
