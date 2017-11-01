#!/bin/sh

#current time
start_time=$( date +%s.%N )
echo "Press any key to end and list files:"
read inp
#echo $inp
bonus_time=0
bonus_time=$2

elapsed_time=$( date +%s.%N --date="$start_time seconds ago" )

echo "Changes in" $elapsed_time "seconds + " $2 "second bonus"
elapsed_time=$( echo "$elapsed_time+$bonus_time" | bc -l)

echo $elapsed_time
#find $1 -newermt "-$elapsed_time seconds" -ls
#while
