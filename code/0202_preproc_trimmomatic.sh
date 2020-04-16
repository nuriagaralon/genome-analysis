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
PE -threads 4 -phred33 \
-basein ~/genome-analysis/data/RNA_raw_data/ERR2036629_1.fastq.gz \
-baseout ~/genome-analysis/analyses/02_diff_expression/02_preproc_trimmomatic/ERR2036629_Trimmed.fastq.gz \
ILLUMINACLIP:$TRIMMOMATIC_HOME/adapters/TruSeq3-PE.fa:2:30:10 \
LEADING:20 \
TRAILING:20 \
SLIDINGWINDOW:1:3 \
MINLEN:40 \
MAXINFO:40:0.5 \

