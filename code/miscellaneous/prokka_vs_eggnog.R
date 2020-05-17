# ANNOTATION REFINEMENT
# Comparison of Prokka and eggNOGmapper annotations, division in different tables by confidence.

# Load libraries
library(data.table)
library(ggplot2)
library(dplyr)

# File paths for easier access
path10 = "~/Documents/Genome_Analysis/genome-analysis/analyses/01_genome_assembly/10_annotation_eggnog/"
path09 = "~/Documents/Genome_Analysis/genome-analysis/analyses/01_genome_assembly/09_annotation_prokka/"
pathdata="~/Documents/Genome_Analysis/genome-analysis/data/metadata/RNA_culturetype.txt"

setwd(path10)

# Read in the prokka file
prokka = read.delim(file = paste(path09,"lferr.tsv",sep=""), sep = "\t", header = TRUE)

# Read in the eggnog file
eggnog <- fread("query_seqs.fa.emapper.annotations", stringsAsFactors = F, select = c(1:6))

colnames(eggnog)[1] <- "locus_tag"

# Merge the two files
annotation <- merge(x = prokka, y = eggnog, by = "locus_tag", all = TRUE)
comp_table <- select(annotation, locus_tag, ftype, gene, Preferred_name)

CDS <- comp_table[comp_table$ftype == 'CDS',]
CDS[is.na(CDS)] <- ""

# Compare annotations
## equal vs unequal
equal_ann <- filter(CDS, gene == Preferred_name)
unequal_ann <- filter(CDS, gene != Preferred_name)

## equal into empty and good
empty_ann <- filter(equal_ann, gene == "")
good_ann <- filter(equal_ann, gene != "")

## checking the empty annotations: did they have any annotation description in prokka?
empty_check <- merge(x = empty_ann[1], y = prokka, by = "locus_tag" )
empty_check <- select(empty_check, locus_tag, product)
colnames(empty_check)[2] <- "gene"

empty_nohyp <- filter(empty_check, gene != "hypothetical protein") 
empty_hyp <- filter(empty_check, gene == "hypothetical protein") 

## unequal annotations into empty from either side
unequal_prokka <- filter(unequal_ann, Preferred_name == "")
unequal_prokka <- select(unequal_prokka, locus_tag, gene)
unequal_eggnog <- filter(unequal_ann, gene == "")
unequal_eggnog <- select(unequal_eggnog, locus_tag, Preferred_name)
colnames(unequal_eggnog)[2] <- "gene"
unequal_both <- filter(unequal_ann, gene != "", Preferred_name != "")

## unequal annotations that have the same name but have for example _1 in one of them
unequal_but_equal <- filter(unequal_both, substr(gene, start = 1, stop = 3) == substr(Preferred_name, start=1, stop=3))
unequal_complete <- filter(unequal_both, substr(gene, start = 1, stop = 3) != substr(Preferred_name, start=1, stop=3))

# Inspecting the unequal_complete: adding the EC numbers to compare them 
eggnog_diff <- fread("query_seqs.fa.emapper.annotations", stringsAsFactors = F, select = c(1:8))
colnames(eggnog_diff)[1] <- "locus_tag"
eggnog_diff <- select(eggnog_diff, locus_tag, EC)
different <- merge(x = unequal_complete, y = eggnog_diff, by = "locus_tag" )

prokka_diff <- select(prokka, locus_tag, EC_number)
different <- merge(x = different, y = prokka_diff, by = "locus_tag" )

different <- select(different, locus_tag, gene, EC_number, Preferred_name, EC)

## With the same EC number they are also accepted
diff_good <- filter(different, EC == EC_number, EC != "")
diff_idk <- rbind(filter(different, EC == "", EC_number!=""), filter(different, EC_number=="", EC!=""), filter(different, EC_number=="", EC==""))

## With a very similar EC number they are also accepted
diff_rest <- filter(different, EC != EC_number, EC != "", EC_number !="")
diff_alsogood <- filter(diff_rest, substr(EC, start = 1, stop = 6) == substr(EC_number, start=1, stop=6))
diff_check <- filter(diff_rest, substr(EC, start = 1, stop = 6) != substr(EC_number, start=1, stop=6))

# Inspecting the ones that only have one of the two annotations.
unequal_prokka_test <- left_join(x=unequal_prokka, y=prokka_diff, by="locus_tag")
unequal_prokka_test <- left_join(x=unequal_prokka_test, y=eggnog_diff, by="locus_tag")
unequal_prokka_test[is.na(unequal_prokka_test)] <- ""
## Empty EC numbers, equal EC numbers, EC number only present in eggNOG, EC only in prokka, unequal EC numbers
unequal_prokka_empty <- filter(unequal_prokka_test, EC == EC_number, EC == "")
unequal_prokka_good <- filter(unequal_prokka_test, EC == EC_number, EC != "")
unequal_prokka_egEC <- filter(unequal_prokka_test, EC_number=="", EC!="")
unequal_prokka_prEC <- filter(unequal_prokka_test, EC_number!="", EC=="")
unequal_prokka_unequal <- filter(unequal_prokka_test, EC != EC_number, EC != "", EC_number !="")

## From unequal EC numbers, the ones that are similar and the ones that are completely different
unequal_prokka_alsogood <- filter(unequal_prokka_unequal, substr(EC, start = 1, stop = 6) == substr(EC_number, start=1, stop=6))
unequal_prokka_check <- filter(unequal_prokka_unequal, substr(EC, start = 1, stop = 6) != substr(EC_number, start=1, stop=6))

## Exactly the same for the eggnog annotation
unequal_eggnog_test <- left_join(x=unequal_eggnog, y=prokka_diff, by="locus_tag")
unequal_eggnog_test <- left_join(x=unequal_eggnog_test, y=eggnog_diff, by="locus_tag")
unequal_eggnog_test[is.na(unequal_eggnog_test)] <- ""
unequal_eggnog_empty <- filter(unequal_eggnog_test, EC == EC_number, EC == "")
unequal_eggnog_good <- filter(unequal_eggnog_test, EC == EC_number, EC != "")
unequal_eggnog_egEC <- filter(unequal_eggnog_test, EC_number=="", EC!="")
unequal_eggnog_prEC <- filter(unequal_eggnog_test, EC_number!="", EC=="")
unequal_eggnog_unequal <- filter(unequal_eggnog_test, EC != EC_number, EC != "", EC_number !="")

unequal_eggnog_alsogood <- filter(unequal_eggnog_unequal, substr(EC, start = 1, stop = 6) == substr(EC_number, start=1, stop=6))
unequal_eggnog_check <- filter(unequal_eggnog_unequal, substr(EC, start = 1, stop = 6) != substr(EC_number, start=1, stop=6))

# How are the EC numbers of the proteins with description in prokka that were not hypothetical proteins?
empty_nohyp_test <- left_join(x=empty_nohyp, y=prokka_diff, by="locus_tag")
empty_nohyp_test <- left_join(x=empty_nohyp_test, y=eggnog_diff, by="locus_tag")
empty_nohyp_test[is.na(empty_nohyp_test)] <- ""
empty_nohyp_empty <- filter(empty_nohyp_test, EC == EC_number, EC == "")
empty_nohyp_good <- filter(empty_nohyp_test, EC == EC_number, EC != "")
empty_nohyp_egEC <- filter(empty_nohyp_test, EC_number=="", EC!="")
empty_nohyp_prEC <- filter(empty_nohyp_test, EC_number!="", EC=="")
empty_nohyp_unequal <- filter(empty_nohyp_test, EC != EC_number, EC != "", EC_number !="")

# OBTAINING ANNOTATION FILES
# good: annotations match

# okay_best: 1 annotation present, EC match
# okay_good: 1 annotation present, EC approximately match, or match from a list
# okay_okay: 1 annotation present, EC empty or only present for the present annotation, EC matches first two numbers

# diff_best: annotations different, EC match
# diff_okay: annotations different, EC approximately match, or match from a list

# diff_good: no EC, but annotations are the same even if different names (added when manually checking afterwards)

# Hypothetical proteins: empty_hyp

setwd("~/Documents/Genome_Analysis/genome-analysis/analyses/01_genome_assembly/12_annotation_refine/")

good <- select(rbind(good_ann, unequal_but_equal), locus_tag, gene)
write.csv(good, file="good.csv")
okay_best <- select(rbind(unequal_prokka_good, unequal_eggnog_good, empty_nohyp_good), locus_tag, gene)
write.csv(okay_best, file="okay_best.csv")
okay_good <- select(rbind(unequal_prokka_alsogood, unequal_eggnog_unequal, empty_nohyp_unequal), locus_tag, gene)
write.csv(okay_good, file="okay_good.csv")
okay_okay <- select(rbind(unequal_prokka_empty, unequal_eggnog_empty, empty_nohyp_empty, empty_nohyp_prEC, unequal_eggnog_egEC, unequal_prokka_prEC), locus_tag, gene)
write.csv(okay_okay, file="okay_okay.csv")
diff_best <- select(diff_good, locus_tag, gene)
write.csv(diff_good, file="diff_best.csv") #keep prokka for names but everything for particular csv
diff_okay <- select(diff_alsogood, locus_tag, gene)
write.csv(diff_alsogood, file="diff_okay.csv") #keep prokka for names but everything for particular csv

# Using all the types of annotation we create a list of names and loci for the differential expression
names <- rbind(good, okay_best, okay_good, okay_okay, diff_best, diff_okay)
write.csv(names, file="ProtNames.csv")

# The files were later edited and added "_edited" because of manual annotation of diff_check, diff_idk, unequal_prokka_check, empty_nohyp_egEC, unequal_eggnog_prEC and unequal_prokka_egEC.