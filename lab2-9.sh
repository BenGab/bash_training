#!/bin/bash

LOGPATH=/tmp/2-9.log

( who ; uptime ; ps ) > $LOGPATH
cat $LOGPATH
