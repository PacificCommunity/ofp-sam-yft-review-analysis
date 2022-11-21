## Calculate CPUE correlation between regions

## Before: cpue.csv (data)
## After:  cpue_resid.csv (model)

library(TAF)
library(FLR4MFCL)  # corFilter, mat2MFCLCor

mkdir("model")

## Read data
cpue <- read.taf("data/cpue.csv")

##
calc.r2 <- function(reg1, reg2, data=cpue)
{
  if(reg1 == reg2)
  {
    1
  }
  else
  {
    cpue1 <- data$cpue[data$area==reg1]
    cpue2 <- data$cpue[data$area==reg2]
    fm <- lm(cpue1 ~ -1 + cpue2)
    summary(fm)$r.squared
  }
}
cpue.r2.matrix <- round(outer(1:9, 1:9, Vectorize(calc.r2)), 3)
dimnames(cpue.r2.matrix) <- list(paste0("Region", 1:9), paste0("Region", 1:9))
cpue.r2 <- mat2MFCLCor(cpue.r2.matrix)
names(cpue.r2) <- c("RegionA", "RegionB", "R2")
cpue.r2 <- cpue.r2[order(-cpue.r2$R2),]
rownames(cpue.r2) <- NULL

## Calculate CPUE correlation between regions
calc.cor <- function(reg1, reg2, data=cpue)
{
  cpue1 <- data$cpue[data$area==reg1]
  cpue2 <- data$cpue[data$area==reg2]
  na.rm <- !is.na(cpue1) & !is.na(cpue2)
  cor(cpue1[na.rm], cpue2[na.rm])
}
cpue.cor.matrix <- round(outer(1:9, 1:9, Vectorize(calc.cor)), 3)
dimnames(cpue.cor.matrix) <- list(paste0("Region", 1:9), paste0("Region", 1:9))
cpue.cor <- mat2MFCLCor(cpue.cor.matrix)
names(cpue.cor) <- c("RegionA", "RegionB", "Corr")
cpue.cor <- cpue.cor[order(-cpue.cor$Corr),]
rownames(cpue.cor) <- NULL

## Write results
write.taf(cpue.cor, dir="model")
write.taf(cpue.cor.matrix, dir="model")
write.taf(cpue.r2, dir="model")
write.taf(cpue.r2.matrix, dir="model")
