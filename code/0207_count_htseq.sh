#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 12:00:00
#SBATCH -J 0207_count_htseq
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load htseq

# Variables
BAM=~/genome-analysis/analyses/02_diff_expression/05_mapping_bwa/

cd ~/genome-analysis/analyses/02_diff_expression/07_count_htseq/

for F in ERR2036629 ERR2036630 ERR2036631 ERR2036632 ERR2036633
do
htseq-count -f bam -r pos -s no -t CDS -i ID \
$BAM${F}.sorted.bam lferr_nofasta.gff > ${F}.txt
done
