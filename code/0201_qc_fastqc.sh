#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J 0201_qc_fastqc
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load FastQC

# variables
INPUT="~/genome-analysis/data/RNA_raw_data/*.fastq.gz"
OUTPUT="~/genome-analysis/analyses/02_diff_expression/01_qc_fastqc"

# running FastQC
fastqc -t 4\
 -o ~/genome-analysis/analyses/02_diff_expression/01_qc_fastqc \
 -d ~/genome-analysis/analyses/02_diff_expression/01_qc_fastqc \
~/genome-analysis/data/RNA_raw_data/*.fastq.gz
