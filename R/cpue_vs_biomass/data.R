## Preprocess data, write TAF data tables

## Before: yft.frq (bootstrap/data)
## After:  cpue.csv (data)

library(TAF)
library(FLR4MFCL)

mkdir("data")

## Read frq file
frq <- read.MFCLFrq("bootstrap/data/yft.frq")

## Calculate CPUE
cpue <- realisations(frq)  # remove size and length frequencies
cpue <- cpue[cpue$fishery %in% 33:41,]
cpue$area <- cpue$fishery - 32
cpue$obs <- cpue$catch / cpue$effort
cpue$obs[cpue$obs < 0] <- NA  # replace -1 with NA
## 2412 rows = 67 years x 4 seasons x 9 areas

## Write CPUE data
write.taf(cpue, dir="data")
