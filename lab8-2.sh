#!/bin/bash
TMP=/tmp/find_tmp
if [ $# -ne 1 ]; then
    echo "Usage: $0 username"
    exit 1
fi

if ! id "$1" &>/dev/null; then
    echo "user: $1 does not exists"
    exit 2
fi
MYCOUNT=0
declare -i x=0
find -type f -user $1 -not -path "/proc*" -exec du -k {} \; | cut -f1 >$TMP
while read x
do
    MYCOUNT=$((MYCOUNT+x))
done < ${TMP} 
echo $MYCOUNT
rm -f $TMP
