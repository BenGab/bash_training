#!/bin/bash

a=0 ; for i in "$*" ; do $((a++)) ; done
b=0 ; for i in "$@" ; do $((b++)) ; done

echo "All paramters count: $a"
echo "All tokens count: $b"
exit 0
