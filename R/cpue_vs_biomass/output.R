## Extract results of interest, write TAF output tables

## Before: prop.csv (model)
## After:  prop.csv (output)

library(TAF)

mkdir("output")

cp("model/prop.csv", "output")
