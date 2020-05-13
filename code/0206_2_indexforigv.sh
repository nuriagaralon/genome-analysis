#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:10:00
#SBATCH -J 0206_2_indexforigv
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load samtools

cd ~/genome-analysis/analyses/02_diff_expression/05_mapping_bwa/

# Run samtools indexing for all bam files

for F in ERR2036629 ERR2036630 ERR2036631 ERR2036632 ERR2036633 \
do
samtools index {F}.sorted.bam\
done
