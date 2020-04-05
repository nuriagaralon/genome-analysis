#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 1
#SBATCH -t 00:10:00
#SBATCH -J 0103_eval_mummer
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load MUMmer/3.23

# variables
INPUT="~/genome-analysis/analyses/01_genome_assembly/01_assembly_canu/lferriphilum.contigs.fasta"
REF="~/genome-analysis/data/reference/lferriphilum_ref.fasta"
MUMS="analyses/01_genome_assembly/03_eval_mummer"

# running MUMmer
mummer -mum -b -c \
$REF \ 
$INPUT \
> $MUMS/lferriphilum.mums

# running mummerplot
cd $MUMS

mummerplot \
-Q $INPUT \
-R $REF \
$MUMS/lferriphilum.mums \
--png --prefix=lferriphilum

gnuplot lferriphilum.gp
