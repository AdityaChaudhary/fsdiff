#!/bin/sh

# ./main.sh path time

if [ $# -lt 2 ]
  then
    cat <<- _EOF_
    [#] Insufficent arguments supplied

    Usage: main.sh <path> <time>

    path: path where to look for changes
    time: how long back to look. eg. -2 seconds, -2 minutes, -7 days

    Sample: main.sh /root "-2 days"
_EOF_
exit
fi


find $1 -newermt "$2" -ls
