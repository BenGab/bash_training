#!/bin/bash

if [[ $EUID -ne 0  ]] ; then
PS1="[\d \t \u@\h:\w] #" ;
else
PS1="[\d \t \u@\h:\w] $" ;
fi;
exit 0

