#!/bin/bash

if [ $# -ne 1 ]; then
   echo "Missing directory name argument"
   exit 1
fi

DIR=$1

if [ ! -d $DIR ]; then
   echo "The given argument is not directory"
   exit 1
fi

if [ ! -r $DIR ]; then
   echo "The $DIR is not readable"
   exit 1
fi

FILE_COUNT=`ls $DIR | wc -l`

if [ $FILE_COUNT -gt 100]; then
   echo "The file count is to large"
else
   echo "There are $FILE_COUNT in the folder"
fi

