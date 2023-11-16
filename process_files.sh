#!/bin/bash

# Input and output file names
inputfile=$1
outputfile="processed_$1"

# Text processing steps
tr '[:upper:]' '[:lower:]' < "$inputfile" | \
sed -e 's/[[:punct:]]//g' | \
sed -e 's/[[:space:]]/\n/g' | \
grep -v "^[[:space:]]*$" | \
sort > "$outputfile"
