#!/bin/bash
if [[ $# -eq 0 ]] ; then
    echo 'Please give a list'
    exit 0
fi
unset -v oldest
for arg in $(cat $1)
do
[[ -z $oldest || $arg -ot $oldest ]] && oldest=$arg
done

echo "Oldest file: $oldest"
