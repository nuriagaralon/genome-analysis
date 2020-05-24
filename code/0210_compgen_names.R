# COMPARATIVE GENOMICS
# Comparison of Leptospirillum ferriphilum and Acidithiobacillus ferrooxidans

# Load libraries
library(data.table)
library(dplyr)

setwd("~/Documents/Genome_Analysis/genome-analysis/analyses/02_diff_expression/10_comparativegen/")
# File paths for easier access
blast = "~/Documents/Genome_Analysis/genome-analysis/analyses/02_diff_expression/10_comparativegen/compgen.txt"
names_lferr = "~/Documents/Genome_Analysis/genome-analysis/analyses/01_genome_assembly/12_annotation_refine/ProtNames_edited.csv"
names_aferr ="~/Documents/Genome_Analysis/genome-analysis/analyses/02_diff_expression/10_comparativegen/headers.txt"

#Read in the blast and names
blast_df = read.delim(blast, sep="\t", header=FALSE)
blast_df <- select(blast_df, V1, V2, V11)
blast_df <- filter(blast_df, V11<0.00001)
colnames(blast_df) <- c("aferr", "lferr", "e.val")

lferr_df = read.delim(names_lferr, sep=",")
lferr_df <- select(lferr_df, locus_tag, gene)
colnames(lferr_df) <- c("lferr", "lferr_gene")

aferr_df = read.delim(names_aferr, sep=" ", header=FALSE)
aferr_df <- select(aferr_df, V1, V2)
colnames(aferr_df) <- c("aferr", "aferr_gene")

# Join names
compgen_temp <- left_join(x=blast_df, y=lferr_df, by="lferr")
compgen <- left_join(x=compgen_temp, y=aferr_df, by="aferr")
compgen <- select(compgen, e.val, lferr_gene, aferr_gene)

write.table(compgen, file = "Comp_lferr_aferr.tsv", row.names=FALSE, sep="\t")

# Fixing loci names in terminal
# sed 's/"//g' Comp_lferr_aferr.tsv > temp.tsv
# sed 's/\[locus.*//g' temp.tsv > temp2.tsv
# sed 's/\[gene//g' temp2.tsv > temp3.tsv
# sed 's/\]//g' temp3.tsv > Comp_definitive.tsv

comp_def = read.delim("Comp_definitive.tsv", sep="\t", header=TRUE, stringsAsFactors = FALSE)
same <- filter(comp_def, substr(lferr_gene, start = 1, stop = 3) == substr(aferr_gene, start=1, stop=3))

# 279 genes have the same annotation.