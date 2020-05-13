#
#

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

annotation <- merge(x = prokka, y = eggnog, by = "locus_tag", all = TRUE)

comp_table <- select(annotation, locus_tag, ftype, gene, Preferred_name)

CDS <- comp_table[comp_table$ftype == 'CDS',]
CDS[is.na(CDS)] <- ""

equal_ann <- filter(CDS, gene == Preferred_name)
unequal_ann <- filter(CDS, gene != Preferred_name)

empty_ann <- filter(equal_ann, gene == "")
good_ann <- filter(equal_ann, gene != "")

empty_check <- merge(x = empty_ann[1], y = prokka, by = "locus_tag" )
empty_check <- select(empty_check, locus_tag, product)
colnames(empty_check)[2] <- "gene"

empty_nohyp <- filter(empty_check, gene != "hypothetical protein") 
empty_hyp <- filter(empty_check, gene == "hypothetical protein") 


unequal_prokka <- filter(unequal_ann, Preferred_name == "")
unequal_prokka <- select(unequal_prokka, locus_tag, gene)
unequal_eggnog <- filter(unequal_ann, gene == "")
unequal_eggnog <- select(unequal_eggnog, locus_tag, Preferred_name)
colnames(unequal_eggnog)[2] <- "gene"
unequal_both <- filter(unequal_ann, gene != "", Preferred_name != "")

unequal_but_equal <- filter(unequal_both, substr(gene, start = 1, stop = 3) == substr(Preferred_name, start=1, stop=3))
unequal_complete <- filter(unequal_both, substr(gene, start = 1, stop = 3) != substr(Preferred_name, start=1, stop=3))

# Inspecting the unequal_complete
eggnog_diff <- fread("query_seqs.fa.emapper.annotations", stringsAsFactors = F, select = c(1:8))
colnames(eggnog_diff)[1] <- "locus_tag"
eggnog_diff <- select(eggnog_diff, locus_tag, EC)
different <- merge(x = unequal_complete, y = eggnog_diff, by = "locus_tag" )

prokka_diff <- select(prokka, locus_tag, EC_number)
different <- merge(x = different, y = prokka_diff, by = "locus_tag" )

different <- select(different, locus_tag, gene, EC_number, Preferred_name, EC)

diff_good <- filter(different, EC == EC_number, EC != "")
diff_idk <- rbind(filter(different, EC == "", EC_number!=""), filter(different, EC_number=="", EC!=""), filter(different, EC_number=="", EC==""))

diff_rest <- filter(different, EC != EC_number, EC != "", EC_number !="")
diff_alsogood <- filter(diff_rest, substr(EC, start = 1, stop = 6) == substr(EC_number, start=1, stop=6))
diff_check <- filter(diff_rest, substr(EC, start = 1, stop = 6) != substr(EC_number, start=1, stop=6))

# Inspecting the okay
unequal_prokka_test <- left_join(x=unequal_prokka, y=prokka_diff, by="locus_tag")
unequal_prokka_test <- left_join(x=unequal_prokka_test, y=eggnog_diff, by="locus_tag")
unequal_prokka_test[is.na(unequal_prokka_test)] <- ""
unequal_prokka_empty <- filter(unequal_prokka_test, EC == EC_number, EC == "")
unequal_prokka_good <- filter(unequal_prokka_test, EC == EC_number, EC != "")
unequal_prokka_egEC <- filter(unequal_prokka_test, EC_number=="", EC!="")
unequal_prokka_prEC <- filter(unequal_prokka_test, EC_number!="", EC=="")
unequal_prokka_unequal <- filter(unequal_prokka_test, EC != EC_number, EC != "", EC_number !="")

unequal_prokka_alsogood <- filter(unequal_prokka_unequal, substr(EC, start = 1, stop = 6) == substr(EC_number, start=1, stop=6))
unequal_prokka_check <- filter(unequal_prokka_unequal, substr(EC, start = 1, stop = 6) != substr(EC_number, start=1, stop=6))


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


empty_nohyp_test <- left_join(x=empty_nohyp, y=prokka_diff, by="locus_tag")
empty_nohyp_test <- left_join(x=empty_nohyp_test, y=eggnog_diff, by="locus_tag")
empty_nohyp_test[is.na(empty_nohyp_test)] <- ""
empty_nohyp_empty <- filter(empty_nohyp_test, EC == EC_number, EC == "")
empty_nohyp_good <- filter(empty_nohyp_test, EC == EC_number, EC != "")
empty_nohyp_egEC <- filter(empty_nohyp_test, EC_number=="", EC!="")
empty_nohyp_prEC <- filter(empty_nohyp_test, EC_number!="", EC=="")
empty_nohyp_unequal <- filter(empty_nohyp_test, EC != EC_number, EC != "", EC_number !="")

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
  write.csv(diff_good, file="diff_best.csv") #keep prokka for names but   everything for particular csv
  diff_okay <- select(diff_alsogood, locus_tag, gene)
  write.csv(diff_alsogood, file="diff_okay.csv") #keep prokka for names but everything for particular csv
  
  names <- rbind(good, okay_best, okay_good, okay_okay, diff_best, diff_okay)
  write.csv(names, file="ProtNames.csv")
