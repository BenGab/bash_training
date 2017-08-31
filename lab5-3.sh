#!/bin/bash

case $1 in
    start)
        xclock &
    ;;
    startdigital)
        xclock -digital &
    ;;
    stop)
       pkill xclock
    ;;
    status)
       if pgrep xclock; then
          echo "xclock is runing"
       else
          echo "xclock is not running"
       fi
    ;;
    *)
      echo 'Usage: { start | startdigital | stop | status  } '
    ;;
esac
exit 0
