#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 40:00:00
#SBATCH -J 0105_circularization
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load circlator

# running circlator
circlator all \
~/genome-analysis/analyses/01_genome_assembly/01_assembly_canu/contigs/tig00004064.fasta \
~/genome-analysis/analyses/01_genome_assembly/01_assembly_canu/lferriphilum.trimmedReads.fasta.gz \
~/genome-analysis/analyses/01_genome_assembly/05_circularization_circlator \
--threads=4

#cd ~/genome-analysis/analyses/01_genome_assembly/04_circularisation_circlator

#circlator clean \
#~/genome-analysis/analyses/01_genome_assembly/01_assembly_canu/lferriphilum.contigs.fasta \
#lferriphilum_clean 

#circlator fixstart ~/genome-analysis/analyses/01_genome_assembly/01_assembly_canu/lferriphilum.contigs.fasta lferriphilum_circ
