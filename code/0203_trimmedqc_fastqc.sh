#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J 0203_trimmedqc_fastqc
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load FastQC

# running FastQC
fastqc -t 4\
 -o ~/genome-analysis/analyses/02_diff_expression/03_qc_fastqc \
 -d ~/genome-analysis/analyses/02_diff_expression/03_qc_fastqc \
~/genome-analysis/analyses/02_diff_expression/02_proc_trimmomatic/*.fastq.gz
