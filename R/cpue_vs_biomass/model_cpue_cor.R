## Run analysis, write model results

## Before: biomass.csv, cpue.csv (data)
## After:  prop.csv (model)

library(TAF)

mkdir("model")

## Read data
cpue <- read.taf("data/cpue.csv")

## Calculate average by area
calc.cor <- function(reg1, reg2, data=cpue)
{
  cpue1 <- data$cpue[data$area==reg1]
  cpue2 <- data$cpue[data$area==reg2]
  na.rm <- !is.na(cpue1) & !is.na(cpue2)
  cor(cpue1[na.rm], cpue2[na.rm])
}
cpue.cor <- round(outer(1:9, 1:9, Vectorize(calc.cor)), 2)

library(FLR4MFCL)
cpue.cor.df <- mat2MFCLCor(cpue.cor)
corFilter(cpue.cor.df, 0.8)

## Write results
