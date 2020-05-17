# READS THAT MAP TO THE GENOME
# Calculate the percentage of reads that map to the genome and the ones that map to genes.

library(dplyr)

# MAPPING IN GENOME
path = "~/Documents/Genome_Analysis/genome-analysis/analyses/02_diff_expression/06_mapstats_sam"

setwd(path)

# Read counts
mapped = read.delim(file = "maptable.tsv", sep = "\t", header = TRUE)
#
mapped <- cbind(mapped, mapped$Mapped.reads/mapped$Total.reads*100)
colnames(mapped)[5] <- "% of reads mapped"

write.csv(mapped, file="mappedperc.csv" )

# MAPPING IN GENES
# File paths for easier access
path08 = "~/Documents/Genome_Analysis/genome-analysis/analyses/02_diff_expression/08_diffexpr_deseq2/"
path07 = "~/Documents/Genome_Analysis/genome-analysis/analyses/02_diff_expression/07_count_htseq/"
pathdata="~/Documents/Genome_Analysis/genome-analysis/data/metadata/RNA_culturetype.txt"

setwd(path08)

## First put all file names into a list 
file_list <- list.files(path = path07,pattern = ".txt")

# Read in the first file and set row names as gene names
dataset = read.delim(file = paste(path07,file_list[1],sep=""), sep = '\t', header = FALSE, row.names = 1)

# Add in the other files
for (i in 2:length(file_list)){
  temp_data <- fread(paste(path07,file_list[i],sep=""), stringsAsFactors = F, select = c(2)) 
  dataset <- cbind(dataset, temp_data) 
}

# Set column names as file names (without the extension)
colnames = gsub(".txt","",file_list)
setnames(dataset, colnames)
# Filter out reads that do not map (select rows that correspond to features)
filtered_dataset <- subset(dataset, grepl("LFT", row.names(dataset)))

summation <- colSums(filtered_dataset)

mapped <- cbind(mapped, mapped$Mapped.and.paired/2 + (mapped$Total.reads-mapped$Mapped.and.paired))
colnames(mapped)[6] <- "Total.paired.and.single"

mapto_gene <- cbind(mapped[1:5,], melt(summation, value.name = "Mapped.togene")) 
mapto_gene <- cbind(mapto_gene, mapto_gene$Mapped.togene/mapto_gene$Total.paired.and.single*100)
colnames(mapto_gene)[8] <- "% of total to gene"

lowalign <- subset(dataset, grepl("aQual", row.names(dataset)))
mapto_gene <- cbind(mapto_gene, (melt(lowalign, value.name = "lowalignq"))[2])
mapto_gene <- cbind(mapto_gene, mapto_gene$Mapped.togene/(mapto_gene$Total.paired.and.single-mapto_gene$lowalignq)*100)
colnames(mapto_gene)[10] <- "% of good q to gene"

nofeat <- subset(dataset, grepl("no_feature", row.names(dataset)))
mapto_gene <- cbind(mapto_gene, (melt(nofeat, value.name = "no_feature"))[2])
mapto_gene <- cbind(mapto_gene, mapto_gene$no_feature/(mapto_gene$Total.paired.and.single-mapto_gene$lowalignq)*100)
colnames(mapto_gene)[12] <- "% of good q to no feature"

summary <- select(mapto_gene, Sample, `% of reads mapped`, `% of total to gene`, `% of good q to gene`, `% of good q to no feature`)

setwd(path)

write.csv(summary, file="mapped_summary.csv")