## Preprocess data, write TAF data tables

## Before: plot-14.par.rep, yft.frq (bootstrap/data)
## After:  cpue.csv, biomass.csv (data)

library(TAF)
suppressMessages(library(FLR4MFCL))

mkdir("data")

## Read MFCL files
frq <- read.MFCLFrq("bootstrap/data/yft.frq")
rep <- read.MFCLRep("bootstrap/data/plot-14.par.rep")

## Calculate spawning biomass
biomass <- adultBiomass(rep)
biomass <- as.data.frame(biomass)
biomass <- biomass[c("year", "season", "area", "data")]
names(biomass) <- c("year", "season", "area", "biomass")
## 2412 rows = 67 years x 4 seasons x 9 areas

## Calculate CPUE
cpue <- realisations(frq)  # remove size and length frequencies
cpue <- cpue[cpue$fishery %in% 33:41,]
cpue$season <- (cpue$month + 1) / 3
cpue$area <- cpue$fishery - 32
cpue$cpue <- cpue$catch / cpue$effort
cpue$cpue[cpue$cpue < 0] <- NA  # replace -1 with NA
cpue <- cpue[c("year", "season", "area", "cpue")]
rownames(cpue) <- NULL
## 2412 rows = 67 years x 4 seasons x 9 areas

## Write TAF tables
write.taf(biomass, dir="data")
write.taf(cpue, dir="data")
