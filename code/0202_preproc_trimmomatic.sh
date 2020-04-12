#!/bin/bash -l

#SBATCH -A g2020008
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:25:00
#SBATCH -J 0202_preproc_trimmomatic
#SBATCH --mail-type=ALL
#SBATCH --mail-user nuria.garrigaalonso.5928@student.uu.se

# Load modules
module load bioinfo-tools
module load trimmomatic

# Run trimmomatic in one file, to save some time
java -jar $TRIMMOMATIC_HOME/trimmomatic.jar \
PE -threads 4 -phred

 -o ~/genome-analysis/analyses/02_diff_expression/01_qc_fastqc \
 -d ~/genome-analysis/analyses/02_diff_expression/01_qc_fastqc \
~/genome-analysis/data/RNA_raw_data/*.fastq.gz

