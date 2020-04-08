#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J 0108_evalcirc_blast
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load blast

# go to folder
cd ~/genome-analysis/analyses/01_genome_assembly/08_evalcirc_blast

# Run blast
blastx -db refseq_protein_v5 \
-query lferr_beginning_ref.fasta \
-out lferr_prot_ref.txt \
-num_threads 4

blastx -db refseq_protein_v5 \
-query lferr_beginning_circ.fasta \
-out lferr_prot_circ.txt \
-num_threads 4
