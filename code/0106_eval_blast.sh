#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:15:00
#SBATCH -J 0106_eval_blast
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load blast

# Run blast
# contig 59
blastn -db nt_v5 \
-query ~/genome-analysis/analyses/01_genome_assembly/01_assembly_canu/contigs/tig00000059.fasta \
-out blast_tig59.txt
