#!/bin/bash

if [ $# -lt 2 ]; then
    echo "The given arguments are less than 2"
    exit 1
fi

FILE=$1

if [ ! -f $FILE ]; then
    echo "The given file is not a file."
    exit 1
fi

if [ ! -r $FILE ]; then
    echo "The given fileis not readable"
    exit
fi

shift

for i in $@; do
    if grep -i $i $FILE; then
        echo "$i was found in $FILE"
    else
        echo "$i was not found in $FILE"
   fi
done

exit 0
