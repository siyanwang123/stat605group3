#!/bin/bash

# Define input and output files
input_files="processed_file1.txt processed_file2.txt processed_file3.txt processed_file4.txt processed_file5.txt"
merged_file="merged_sorted_file.txt"
counts_file="countsOfWords.txt"

# Concatenate the processed files into one large file
cat $input_files > $merged_file

# Make all letters lowercase
tr '[:upper:]' '[:lower:]' < $merged_file > temp1.txt

# Remove punctuation
sed -e 's/[[:punct:]]//g' temp1.txt > temp2.txt

# Make it have one word per line
sed -e 's/[[:space:]]/\n/g' temp2.txt > temp3.txt

# Remove blank lines
grep -v "^[[:space:]]*$" temp3.txt > temp4.txt

# Sort the file of words
sort -m temp4.txt > $counts_file

# Ensure familiar English sort order
export LC_ALL=C
sort -r -k 2,2 -n -o $counts_file $counts_file

# Clean up temporary files
rm temp*.txt

echo "Post-processing completed successfully."
