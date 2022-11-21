## Extract results of interest, write TAF output tables

## Before: cpue_avg.csv, cpue_cor.csv, cpue_cor_matrix.csv, prop.csv (model)
## After:  cpue_avg.csv, cpue_cor.csv, cpue_cor_matrix.csv, prop.csv (output)

library(TAF)

mkdir("output")

cp("model/cpue_avg.csv", "output")
cp("model/cpue_cor.csv", "output")
cp("model/cpue_cor_matrix.csv", "output")
cp("model/prop.csv", "output")
