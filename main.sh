#!/bin/sh

# ./main.sh path time

find $1 -newermt "$2" -ls
