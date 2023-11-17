#!/bin/bash                                                                                                                                                                                              

#Define input and output file                                                                                                                                                                               
merged_file="for_countsOfWords.txt"
counts_file="countsOfWords.txt"

#convert                                                                                                                                                                                                    
uniq -c $merged_file | awk '{print $1, $2}' | sort -nr > $counts_file

