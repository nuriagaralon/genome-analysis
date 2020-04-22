#!/usr/bin/env python
"""
samereads.py
-------------------
This script checks if two fastq files are the same
"""

import sys
import gzip

total = 0
same = 0
with gzip.open(sys.argv[1], 'rt') as f1, gzip.open(sys.argv[2], 'rt') as f2:
        for l1,l2 in zip(f1,f2):
            if not l1.startswith('ERR', 1):
                total += 1
                if l1 == l2:
                    same += 1

perc = (same/total)*100

print(f'{sys.argv[1]} vs {sys.argv[2]}: {perc} perc similarity')
