#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 40:00:00
#SBATCH -J 0105_circularisation
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load circlator

# variables
ASSEMBLY="~/genome-analysis/analyses/01_genome_assembly/01_assembly_canu/lferriphilum.contigs.fasta"
READS="~/genome-analysis/analyses/01_genome_assembly/01_assembly_canu/lferriphilum.correctedReads.fasta.gz"
OUTPUT="~/genome-analysis/analyses/01_genome_assembly/05_circularization_circlator"

# running circlator
circlator all \
$ASSEMBLY \
$READS \
$OUTPUT \
--threads=4
