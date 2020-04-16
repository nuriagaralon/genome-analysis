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
module load bwa

# Variables
REF = "~/genome-analysis/analyses/01_genome_assembly/lferriphilum_genome.fasta"
TRIMREADS = "~/genome-analysis/data/RNA_trimmed_reads/"

# Run BWA indexing
bwa index $REF -p lferrdb

# Run BWA MEM
bwa mem -t 4 lferrdb \


