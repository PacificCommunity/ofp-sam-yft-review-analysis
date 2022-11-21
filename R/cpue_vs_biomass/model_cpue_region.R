## Calculate CPUE correlation between regions

## Before: cpue.csv (data)
## After:  cpue_region.csv (model)

library(TAF)

mkdir("model")

## Read data
cpue <- read.taf("data/cpue.csv")

## Calculate CPUE by region
cpue.region <- aggregate(cpue~year+area, cpue, mean)

## Write results
write.taf(cpue.region, dir="model")
