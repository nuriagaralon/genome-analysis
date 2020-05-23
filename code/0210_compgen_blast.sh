#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 01:00:00
#SBATCH -J 0210_compgen_blast
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load blast

# go to folder
cd ~/genome-analysis/analyses/02_diff_expression/10_comparativegen/

# make database
makeblastdb -in ../../01_genome_assembly/09_annotation_prokka/lferr.faa -dbtype prot -out lferr_prot -parse_seqids

# Run blast and reformat
blastp -db lferr_prot \
-query aferr.faa \
-out compgen.txt \
-max_target_seqs 1 \
-num_threads 2 -outfmt 6\
