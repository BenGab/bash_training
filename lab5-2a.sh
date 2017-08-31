#!/bin/bash

if [ $# -lt 1 ]; then
   echo "No filenames given"
   exit 1
fi

for i in $@; do
   PERM="File $i:"
   case $i in
      -f)
       PERM="${PERM} file"
       ;;&
      -r)
       PERM="S{PERM} readable"
       ;;
   esac
   echo $PERM
done
exit 0
