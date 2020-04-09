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
blastn -subject ../lferriphilum_genome.fasta \
-query synteny_genomes/lferriphilum_ML04.fna \
-out lfML04_lfTS_0.txt \
-num_threads 2 -outfmt 0

blastn -subject	../lferriphilum_genome.fasta \
-query synteny_genomes/lferrooxidans_C23.fna \
-out lfC23_lfTS_0.txt \
-num_threads 2 -outfmt 0

blastn -subject	../lferriphilum_genome.fasta \
-query synteny_genomes/ndefluvii.fna \
-out nd_lfTS_0.txt \
-num_threads 2 -outfmt 0

blastn -subject	../lferriphilum_genome.fasta \
-query synteny_genomes/tyellowstonii.fna \
-out ty_lfTS_0.txt \
-num_threads 2 -outfmt 0


blastn -subject	../lferriphilum_genome.fasta \
-query synteny_genomes/lferriphilum_ML04.fna \
-out lfML04_lfTS_6.txt \
-num_threads 2 -outfmt 6 

blastn -subject ../lferriphilum_genome.fasta \
-query synteny_genomes/lferrooxidans_C23.fna \
-out lfC23_lfTS_6.txt \
-num_threads 2 -outfmt 6

blastn -subject ../lferriphilum_genome.fasta \
-query synteny_genomes/ndefluvii.fna \
-out nd_lfTS_6.txt \
-num_threads 2 -outfmt 6

blastn -subject ../lferriphilum_genome.fasta \
-query synteny_genomes/tyellowstonii.fna \
-out ty_lfTS_6.txt \
-num_threads 2 -outfmt 6


# order files
mkdir sub_pair
mv *0.txt sub_pair

mkdir sub_tab
mv *6.txt sub_tab
