#!/bin/bash

if [[ $# -ne 1 ]]; then
    echo "usage: $0 <file>"
    exit 0
fi

file=$1

cat $file | tr '[:upper:]' '[:lower:]' | sed -e 's/[[:punct:]]//g' | sed -e 's/[[:space:]]/\n/g' -e 's/\t/\n/g' | grep -v "^[[:space:]]*$" | sort
