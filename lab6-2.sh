#!/bin/bash

if [ $# -ne 1 ]; then
   echo "USAGE: give one argument"
   exit 1
fi

if [ `expr index $1 /` -eq 0 ]; then
   echo "Argument is not a pathname"
   exit 1
fi

STR=$1

while [ -n "$STR" ]
 do
    echo $STR
    if [ `expr index $STR /` -eq 0 ]; then break; fi
    STR=${STR%/*}
done
exit 0
