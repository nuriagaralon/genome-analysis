#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:15:00
#SBATCH -J 0111_synteny_blast
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load blast

# go to folder
cd ~/genome-analysis/analyses/01_genome_assembly/11_synteny/

# make database
makeblastdb -in ../lferriphilum_genome.fasta -dbtype nucl -out lferr_ts 

# Run blast and reformat
blastn -db lferr_ts \
-query synteny_genomes/lferriphilum_ML04.fna \
-out lfML04_lfTS_arch.txt \
-num_threads 2 -outfmt 11

blast_formatter -archive lfML04_lfTS_arch.txt -outfmt 0 -out lfML04_lfTS_pair.txt
blast_formatter -archive lfML04_lfTS_arch.txt -outfmt 6 -out lfML04_lfTS_tab.txt

blastn -db lferr_ts \
-query synteny_genomes/lferrooxidans_C23.fna \
-out lfC23_lfTS_arch.txt \
-num_threads 2 -outfmt 11

blast_formatter	-archive lfC23_lfTS_arch.txt -outfmt 0 -out lfC23_lfTS_pair.txt
blast_formatter	-archive lfC23_lfTS_arch.txt -outfmt 6 -out lfC23_lfTS_tab.txt 

blastn -db lferr_ts \
-query synteny_genomes/ndefluvii.fna \
-out nd_lfTS_arch.txt \
-num_threads 2 -outfmt 11

blast_formatter	-archive nd_lfTS_arch.txt -outfmt 0 -out nd_lfTS_pair.txt
blast_formatter	-archive nd_lfTS_arch.txt -outfmt 6 -out nd_lfTS_tab.txt

blastn -db lferr_ts \
-query synteny_genomes/tyellowstonii.fna \
-out ty_lfTS_arch.txt \
-num_threads 2 -outfmt 11

blast_formatter	-archive ty_lfTS_arch.txt -outfmt 0 -out ty_lfTS_pair.txt
blast_formatter	-archive ty_lfTS_arch.txt -outfmt 6 -out ty_lfTS_tab.txt

# order files
mkdir archive
mv *arch.txt archive

mkdir pairwise
mv *pair.txt pairwise

mkdir tabular
mv *tab.txt tabular
