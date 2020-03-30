#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 17:00:00
#SBATCH -J 01_assembly
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load canu

# running canu
canu \
 -p lferriphilum \
 -d genome-analysis/analyses/01_genome_assembly/01_assembly_canu \
 genomeSize=2.6m \
 stopOnReadQuality=false \
 maxThreads=4 \
 -pacbio-raw genome-analysis/data/DNA_raw_data/ERR2028*.fastq.gz 

