#!/bin/bash

if [ $# -ne 2 ] 
then
   echo "Usage: S0 path username"
   exit 1
fi

if [ $UID -ne 0 ]
then
   echo "This script should be used as root."
   exit 2
fi

if ! id $2 &>/dev/null; then
   echo "The user $2 does not exits"
   exit 3
elif [ -e $1 ]; then
   echo "Path already exists"
   exit 4
else
   mkdir $1
   chown $1 $2
   chmod 700 $1
fi

