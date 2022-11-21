## Extract results of interest, write TAF output tables

## Before: cpue_avg.csv, cpue_cor.csv, cpue_cor_matrix.csv, cpue_r2.csv,
##         cpue_r2_matrix.csv, cpue_region.csv, prop.csv (model)
## After:  cpue_avg.csv, cpue_cor.csv, cpue_cor_matrix.csv, cpue_r2.csv,
##         cpue_r2_matrix.csv, cpue_region.csv, prop.csv (output)

library(TAF)

mkdir("output")

cp("model/cpue_avg.csv", "output")
cp("model/cpue_cor.csv", "output")
cp("model/cpue_cor_matrix.csv", "output")
cp("model/cpue_r2.csv", "output")
cp("model/cpue_r2_matrix.csv", "output")
cp("model/cpue_region.csv", "output")
cp("model/prop.csv", "output")
