#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:20:00
#SBATCH -J 0102_eval_quast
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load quast

# variables
INPUT="~/genome-analysis/analyses/01_genome_assembly/05_circularization_circlator/06.fixstart.fasta"
OUTPUT="~/genome-analysis/analyses/01_genome_assembly/07_evalcirc_quast/"
REF="~/genome-analysis/data/reference/lferriphilum_ref.fasta"

#run quast
quast.py \
~/genome-analysis/analyses/01_genome_assembly/05_circularization_circlator/06.fixstart.fasta \
-R ~/genome-analysis/data/reference/lferriphilum_ref.fasta \
-o ~/genome-analysis/analyses/01_genome_assembly/07_evalcirc_quast/ \
--gene-finding
