#!/bin/bash

# Download and extract Shakespeare data
wget https://pages.stat.wisc.edu/~jgillett/DSCP/CHTC/wordCounting/shakespeare.t\
ar
tar -xf shakespeare.tar

# Navigate to the directory containing the Shakespeare plays
cd shakespeare

# Concatenate all plays into one large file outside the shakespeare folder
cat comedies/* histories/* poetry/* tragedies/* > ../all_plays.txt

# Break the large file into 5 smaller files outside the shakespeare folder
cd ..
split -n l/5 --additional-suffix=.txt all_plays.txt chunk_

mv file_aa.txt file1.txt
mv file_ae.txt file2.txt
mv file_ab.txt file3.txt
mv file_ac.txt file4.txt
mv file_ad.txt file5.txt
