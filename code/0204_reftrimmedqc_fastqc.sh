#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J 0204_reftrimmedqc_fastqc
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load FastQC

# running FastQC
fastqc -t 4\
 -o ~/genome-analysis/analyses/02_diff_expression/04_refqc_fastqc \
 -d ~/genome-analysis/analyses/02_diff_expression/04_refqc_fastqc \
~/genome-analysis/data/RNA_trimmed_reads/*.fastq.gz
