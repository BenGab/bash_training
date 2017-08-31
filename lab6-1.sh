#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Usage: give one arugment"
    exit 1
fi

declare -i LIMIT=$1

if (( $LIMIT <= 2)); then
   echo "Usage: number argument greater than 2"
   exit 1
fi

declare -i LEFT=0
declare -i RIGHT=1
declare -i SUM=$(( LEFT + RIGHT )) 
LIMIT=${LIMIT-0}
LIMIT=$(( LIMIT - 2 ))

echo $LEFT
echo $RIGHT

while (( SUM <= LIMIT )); do
   echo $SUM
   LEFT=$RIGHT;
   RIGHT=$SUM;
   SUM=$(( LEFT + RIGHT ))
done

exit 0


