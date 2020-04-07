#!/bin/bash -l

# Which file?
echo Which BLAST file do you want to summarise?

read BLAST

awk '1;/>/{exit}' $BLAST > output.txt

awk '!/>/' output.txt > summary_$BLAST

grep '>' -A5 $BLAST >> summary_$BLAST

rm output.txt
