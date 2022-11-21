## Calculate CPUE correlation between regions

## Before: cpue.csv (data)
## After:  cpue_cor.csv, cpue_cor_matrix.csv (model)

library(TAF)
suppressMessages(library(FLR4MFCL))  # corFilter, mat2MFCLCor

mkdir("model")

## Read data
cpue <- read.taf("data/cpue.csv")

## Calculate CPUE correlation between regions
calc.cor <- function(reg1, reg2, data=cpue)
{
  cpue1 <- data$cpue[data$area==reg1]
  cpue2 <- data$cpue[data$area==reg2]
  na.rm <- !is.na(cpue1) & !is.na(cpue2)
  cor(cpue1[na.rm], cpue2[na.rm])
}
cpue.cor.matrix <- round(outer(1:9, 1:9, Vectorize(calc.cor)), 2)
dimnames(cpue.cor.matrix) <- list(paste0("Region", 1:9), paste0("Region", 1:9))

## Format as data frame
cpue.cor <- mat2MFCLCor(cpue.cor.matrix)
names(cpue.cor) <- c("RegionA", "RegionB", "Corr")
cpue.cor <- cpue.cor[order(-cpue.cor$Corr),]
rownames(cpue.cor) <- NULL

## Write results
write.taf(cpue.cor, dir="model")
write.taf(cpue.cor.matrix, dir="model")
