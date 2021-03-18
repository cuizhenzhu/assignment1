#!/bin/bash
HOUR=$(date "+%M")
Time=$(date "+%T")
echo "Time diplay:"
echo $Time

if [ 20 -gt $HOUR ]; then
    echo "time lies between 0 minute and 20 minutes past the hour; no chime"
    exit 0

elif [ 40 -gt $HOUR ]; then
    echo "time lies between 20 minutes and 40 minutes past the hour, one chime"
    echo $'\a'
else
    echo "time lies between 40 minutes and 60 minutes past the hour, two chimes"
    echo $'\a'
    sleep 1; echo $'\a'

fi

