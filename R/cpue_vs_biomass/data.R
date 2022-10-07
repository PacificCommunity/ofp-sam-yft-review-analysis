## Preprocess data, write TAF data tables

## Before: plot-14.par.rep, yft.frq (bootstrap/data)
## After:  cpue.csv, sb.csv (data)

library(TAF)
suppressMessages(library(FLR4MFCL))

mkdir("data")

## Read MFCL files
frq <- read.MFCLFrq("bootstrap/data/yft.frq")
rep <- read.MFCLRep("bootstrap/data/plot-14.par.rep")

## Calculate CPUE
cpue <- realisations(frq)  # remove size and length frequencies
cpue <- cpue[cpue$fishery %in% 33:41,]
cpue$season <- (cpue$month + 1) / 3
cpue$area <- cpue$fishery - 32
cpue$index <- cpue$catch / cpue$effort
cpue$index[cpue$index < 0] <- NA  # replace -1 with NA
cpue <- cpue[c("year", "season", "area", "index")]
rownames(cpue) <- NULL
## 2412 rows = 67 years x 4 seasons x 9 areas

## Calculate spawning biomass
sb <- adultBiomass(rep)
sb <- as.data.frame(sb)
sb <- sb[c("year", "season", "area", "data")]
names(sb) <- c("year", "season", "area", "biomass")
## 2412 rows = 67 years x 4 seasons x 9 areas

## Write TAF tables
write.taf(cpue, dir="data")
write.taf(sb, dir="data")
