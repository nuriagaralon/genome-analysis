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
data/reference/lferriphilum_ref.fasta \ 
analyses/01_genome_assembly/01_assembly_canu/lferriphilum.contigs.fasta \
> analyses/01_genome_assembly/03_eval_mummer/lferriphilum.mums 

# running mummerplot
cd analyses/01_genome_assembly/03_eval_mummer/

mummerplot \
-Q ~/genome-analysis/analyses/01_genome_assembly/01_assembly_canu/lferriphilum.contigs.fasta \
-R ~/genome-analysis/data/reference/lferriphilum_ref.fasta \
~genome-analysis/analyses/01_genome_assembly/03_eval_mummer/lferriphilum.mums \
--png --prefix=lferriphilum

gnuplot lferriphilum.gp
