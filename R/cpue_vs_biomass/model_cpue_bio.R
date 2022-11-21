## Calculate proportion of CPUE and biomass in each region

## Before: biomass.csv, cpue.csv (data)
## After:  prop.csv (model)

library(TAF)

mkdir("model")

## Read data
biomass <- read.taf("data/biomass.csv")
cpue <- read.taf("data/cpue.csv")

## Calculate average by area
cpue <- aggregate(cpue~area, cpue, mean)
biomass <- aggregate(biomass~area, biomass, mean)

## Proportion of total
prop <- merge(cpue, biomass)
prop$cpue <- prop.table(prop$cpue)
prop$biomass <- prop.table(prop$biomass)

## Write results
write.taf(prop, dir="model")
