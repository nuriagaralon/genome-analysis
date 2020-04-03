#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:10:00
#SBATCH -J 03_eval_mummer
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer/3.23

# running MUMmer
mummer -mum -b -c \
~/genome-analysis/data/OBMB01.fasta \ 
~/genome-analysis/analyses/01_genome_assembly/01_assembly_canu/lferriphilum.contigs.fasta \
> analyses/01_genome_assembly/03_eval_mummer/lferriphilum.mums 

cd ~/genome-analysis/analyses/01_genome_assembly/03_eval_mummer/

# running mummerplot
mummerplot \
-Q ~/genome-analysis/analyses/01_genome_assembly/01_assembly_canu/lferriphilum.contigs.fasta \
-R ~/genome-analysis/data/lferriphilum_ref.fasta \
~/genome-analysis/analyses/01_genome_assembly/03_eval_mummer/lferriphilum.mums \
--postscript --prefix=lferriphilum

gnuplot lferriphilum.gp
