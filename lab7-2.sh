#!/bin/bash

if [ $# -eq 0 ]; then
   echo "Usage: $0 [-n newlogin] [-g newgrp] [-l] loginname"
   exit 1
fi

command="usermod "

while getopts "n:g:l" myopts; do
    case $myopts in
      n) command="$command -l $OPTARG "     
      ;;

      g) command="$command -g $OPTARG"
      ;;

      l) command="$command -L"
      ;;

      *)
       myindex=$(($OPTIND-1)) 
       echo "option $(!myindex) is not implemented"
    esac
done

command="$command ${!OPTIND}"
echo $command
