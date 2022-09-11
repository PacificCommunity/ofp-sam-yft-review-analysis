library(FLR4MFCL)
source("utilities.R")

stepwise <- "z:/yft/2020_review/analysis/stepwise"

IDXNOEFF <- read.plot.rep(file.path(stepwise, "09_IdxNoeff"))  # plot-14.par.rep
idxnoeff <- read.MFCLRep(file.path(stepwise, "09_IdxNoeff/plot-14.par.rep"))

## Nothing to check for SelUngroup: no End.tar.gz file

JPTP <- read.plot.rep(file.path(stepwise, "11_JPTP"))  # plot-14.par.rep
jptp <- read.MFCLRep(file.path(stepwise, "11_JPTP/plot-14.par.rep"))

AGE10LW <- read.plot.rep(file.path(stepwise, "12_Age10LW"))  # plot-14.par.rep
age10lw <- read.MFCLRep(file.path(stepwise, "12_Age10LW/plot-14.par.rep"))

CONDAGE <- read.plot.rep(file.path(stepwise, "13_CondAge"))  # plot-11.par.rep
condage <- read.MFCLRep(file.path(stepwise, "13_CondAge/plot-11.par.rep"))

MATLENGTH <- read.plot.rep(file.path(stepwise, "14_MatLength"))  # plot-11.par.rep
matlength <- read.MFCLRep(file.path(stepwise, "14_MatLength/plot-11.par.rep"))

NOSPNFRAC <- read.plot.rep(file.path(stepwise, "15_NoSpnFrac"))  # plot-11.par.rep
nospnfrac <- read.MFCLRep(file.path(stepwise, "15_NoSpnFrac/plot-11.par.rep"))

## Nothing to check for Size60: no End.tar.gz file

## Nothing to check for Diag20:
## End.tar.gz goes to plot-12.par.rep
## Folder goes to plot-14.par.rep

################################################################################

identical(IDXNOEFF, idxnoeff)
identical(JPTP, jptp)
identical(AGE10LW, age10lw)
identical(CONDAGE, condage)
identical(MATLENGTH, matlength)
identical(NOSPNFRAC, nospnfrac)

AGE10LW_MIXED <- read.plot.rep(file.path(stepwise, "12_Age10LW_Mixed"))  # plot-14.par.rep
age10lw_mixed <- read.MFCLRep(file.path(stepwise, "12_Age10LW_Mixed/plot-14.par.rep"))
identical(AGE10LW_MIXED, age10lw_mixed)
