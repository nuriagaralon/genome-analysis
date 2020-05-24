# METABOLISM ANALYSIS
# Extracting KEGG codes for metabolism analysis

# Load libraries
library(data.table)
library(ggplot2)
library(dplyr)

# File paths for easier access
path10 = "~/Documents/Genome_Analysis/genome-analysis/analyses/01_genome_assembly/10_annotation_eggnog/"
path09 = "~/Documents/Genome_Analysis/genome-analysis/analyses/01_genome_assembly/09_annotation_prokka/"
path="~/Documents/Genome_Analysis/genome-analysis/analyses/02_diff_expression/09_metabolism_KEGG"

setwd(path)

# Read in the eggnog file
eggnog <- fread(paste(path10,"query_seqs.fa.emapper.annotations", sep=""), stringsAsFactors = F, select = c(1:9))
colnames(eggnog)[1] <- "locus_tag"

eggnog <- select(eggnog, locus_tag, KEGG_ko)

# Write to file
write.table(eggnog, file = "KEGG_values.tsv", row.names=FALSE, sep="\t")

# Afterwards we treat the file from bash to obtain the desired format
# sed 's/ko://g' KEGG_values.tsv > KEGG_temp.txt
# sed 's/"//g' KEGG_temp.txt > KEGG.txt

