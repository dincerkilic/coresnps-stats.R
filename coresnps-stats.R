#!/usr/bin/Rscript
library(ape)
args = commandArgs(trailingOnly = TRUE) #make command line accessible

align <- read.dna(file=args[1], format="fasta") #read fasta alignment file

n_snp <- as.matrix(dist.dna(align, "N")) #calculate snps differences among pairwise alignments and create matrix

cat("\n*****************************************************************************************", '\n')
cat ("* R script to give statistics of core SNPs distances from a given pairwise fasta alignment file\t*", '\n')
cat ("*****************************************************************************************", '\n')

cat("\nMaximum core SNPs distance:",  max(n_snp), '\n') #cat for printing without [] in terminalprint(mean(n_snp)) #maximum snps distance
cat("Minimum core SNPs distance:", min(n_snp[n_snp != 0]),'\n') #minimum snps distance
cat("Average core SNPs distance:", round(mean(n_snp), digits = 1), "\n", '\n') #average snps distance

