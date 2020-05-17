# CLASSIFICATION OF CDS
# Assign general functional categories to CDS 

# Load libraries
library(data.table)
library(ggplot2)
library(dplyr)

# File paths for easier access
path = "~/Documents/Genome_Analysis/genome-analysis/analyses/02_diff_expression/08_diffexpr_deseq2/"
pathfiles = "~/Documents/Genome_Analysis/genome-analysis/data/reference/"
path09 = "~/Documents/Genome_Analysis/genome-analysis/analyses/01_genome_assembly/09_annotation_prokka/lferr.tsv"

setwd(path)

# Read in the prokka file
prokka = read.delim(file = path09, sep = "\t", header = TRUE, stringsAsFactors = FALSE)
prokka <- prokka[prokka$ftype == 'CDS',]
prokka <- select(prokka, locus_tag)
colnames(prokka) <- "project"

# Read in the blast comparison (article vs project)
names = read.delim(file = "matching.tsv", sep = "\t", header = FALSE, stringsAsFactors = FALSE)
colnames(names)[1:2] <- c("article", "project")
names = select(names, article, project)

# Read in the specific and general categories
categories = read.delim(file = paste(pathfiles, "manually_assigned_categories.csv",sep=""), sep = "\t", header = FALSE, stringsAsFactors = FALSE)
colnames(categories) <- c("article", "category")
gencategories = read.delim(file = paste(pathfiles, "general_categories.csv",sep=""), sep = ",", header = FALSE, stringsAsFactors = FALSE)
colnames(gencategories) <- c("category", "gencategory")

categories <- left_join(x=categories, y=gencategories, by="category")
categories <- select(categories, article, gencategory)
colnames(categories)[2] <- "category"

# Join name with locus
join <- left_join(x=prokka, y=names, by = "project")
join_categories <- left_join(x=join, y=categories, by="article")
join_categories[is.na(join_categories)] <- "Other"

classification <- select(join_categories, project, category)
classification <- classification[!duplicated(classification),]

# Write the classification file for differential expression
write.csv(classification, "classification.csv")

