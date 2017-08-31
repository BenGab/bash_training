#!/bin/bash

if [ $# -ne 1 ]; then
   echo "Usage:Give one path argument"
   exit 1
fi

if [ `expr index $1 /` -eq 0 ]; then
   echo "Argument is not a path"
   exit 1
fi

STR=${1#/}
STR=${STR##*/}
echo $STR
exit 0
