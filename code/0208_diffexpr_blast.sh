#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:30:00
#SBATCH -J 0208_diffexpr_blast
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load blast

# go to folder
cd ~/genome-analysis/analyses/02_diff_expression/08_diffexpr_deseq2/

# make database
makeblastdb -in ../../01_genome_assembly/09_annotation_prokka/lferr.faa -dbtype prot -out lferr_prot -parse_seqids

# Run blast and reformat
blastp -db lferr_prot \
-query ../../../data/reference/lf_merged.faa \
-out proteinclassif.txt \
-num_threads 2 -outfmt 11

blast_formatter -archive proteinclassif.txt -outfmt 0 -out proteinclassif_pair.txt
blast_formatter -archive proteinclassif.txt -outfmt 6 -out proteinclassif_tab.txt 
