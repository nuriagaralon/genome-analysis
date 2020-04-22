#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:30:00
#SBATCH -J 0206_mapstats_sam
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa samtools

cd ~/genome-analysis/analyses/02_diff_expression/06_mapstats_sam/

# Run stats samtools for each sorted bam file and plot it

for F in ERR2036629 ERR2036630 ERR2036631 ERR2036632 ERR2036633 \
ERR2117288 ERR2117289 ERR2117290 ERR2117291 ERR2117292
do
mkdir $F
cd $F
samtools stats ../../05_mapping_bwa/${F}.sorted.bam > ${F}.stats
plot-bamstats -p $F ${F}.stats
cd ..
done

