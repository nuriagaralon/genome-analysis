#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:30:00
#SBATCH -J check_RNA_reads
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

cd ~/genome-analysis/code/miscellaneous

file1=(
  ERR2036629
  ERR2036630
  ERR2036631
  ERR2036632
  ERR2036633
)

file2=(
  ERR2117288
  ERR2117289
  ERR2117290
  ERR2117291
  ERR2117292
)

RAW=~/genome-analysis/data/RNA_raw_data/

for i in ${!file1[*]}
do
python3 samereads.py $RAW${file1[$i]}_1.fastq.gz $RAW${file2[$i]}_1.fastq.gz
python3 samereads.py $RAW${file1[$i]}_2.fastq.gz $RAW${file2[$i]}_2.fastq.gz
done > same_reads.txt
