#!/bin/sh

#current time
#start_time=$( date +%s.%N )


if [ $# -lt 2 ]
  then
    cat <<- _EOF_
    [#] Insufficent arguments supplied

    Usage: cdiff.sh <path>

    path: path where to look for changes

    Sample: cdiff.sh /root
_EOF_
exit
fi


SECONDS=0
echo "Press any key to end and list changed files:"
read inp
#echo $inp
#bonus_time=0
#bonus_time=$2

#elapsed_time=$( date +%s.%N --date="$start_time seconds ago" )
elapsed_time=$SECONDS
echo "Changes in last $elapsed_time seconds"
#elapsed_time=$( echo "$elapsed_time+$bonus_time" | bc -l)

#echo $elapsed_time
find $1 -newermt "-$elapsed_time seconds" -ls
#while
