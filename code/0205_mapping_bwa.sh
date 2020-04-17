#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 08:00:00
#SBATCH -J 0205_mapping_bwa
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load bwa samtools

# Variables
REF=~/genome-analysis/analyses/01_genome_assembly/lferriphilum_genome.fasta
TRIMREADS=~/genome-analysis/data/RNA_trimmed_reads/

cd ~/genome-analysis/analyses/02_diff_expression/05_mapping_bwa/

# Run BWA indexing
bwa index $REF -p lferrdb

# Run BWA MEM for each experiment (two files of paired reads)
# and pipe it to SAMtools which creates a bam file and sorts it

for F in ERR2036629 ERR2036630 ERR2036631 ERR2036632 ERR2036633 \
ERR2117288 ERR2117289 ERR2117290 ERR2117291 ERR2117292
do
bwa mem -t 4 lferrdb \
$TRIMREADS${F}_P1.trim.fastq.gz $TRIMREADS${F}_P2.trim.fastq.gz |
samtools view -S -b | samtools sort -o ${F}.sorted.bam
done
