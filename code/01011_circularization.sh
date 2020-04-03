#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 15:00:00
#SBATCH -J 011_circularization
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load circlator

# running circlator
circlator all \
~/genome-analysis/analyses/01_genome_assembly/01_assembly_canu/lferriphilum.contigs.fasta \
~/genome-analysis/analyses/01_genome_assembly/01_assembly_canu/lferriphilum.correctedReads.fasta.gz \
~/genome-analysis/analyses/01_genome_assembly/011_circularization_circlator \
--threads=4
