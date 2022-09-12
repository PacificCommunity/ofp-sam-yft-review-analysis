library(FLR4MFCL)
library(TAF)

# Read diagnostic model
Diag20 <- read.MFCLRep(file.path("z:/yft/2020_review/analysis/stepwise",
                                 "17_Diag20/plot-14.par.rep"))

# Extract depletion, biomass, unfished
depletion <- as.data.frame(SBSBF0(Diag20, combine_areas=FALSE))
biomass   <- as.data.frame(SB(Diag20,     combine_areas=FALSE))
unfished  <- as.data.frame(SBF0(Diag20,   combine_areas=FALSE))
