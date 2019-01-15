#!/bin/bash

genmondir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

case "$1" in
  start)
    echo "Starting genmon python3 scripts"
    python3 "$genmondir/genloader.py" -s
    ;;
  stop)
    echo "Stopping genmon python3 scripts"
    python3 "$genmondir/genloader.py" -x
    ;;
  hardstop)
    echo "Hard Stopping genmon python3 scripts"
    python3 "$genmondir/genloader.py" -z
    ;;
  restart)
    echo "Restarting genmon python3 scripts"
    python3 "$genmondir/genloader.py" -r
    ;;
  *)
    #
    echo "Invalid command. Valid commands are start, stop, restart or hardstop."
    ;;
esac

exit 0
