library(TAF)
library(FLR4MFCL)
library(gplots)

# read 2017 diagnostic model
diag17 <- read.MFCLRep("z:/yft/2017/assessment/RefCase/plot-14.par.rep")

# read 2020 stepwise 'Update'
untar("z:/yft/2020/assessment/ModelRuns/Stepwise/Step3Update/End.tar.gz", "plot-14.par.rep")
step4_update <- read.MFCLRep("plot-14.par.rep")
file.remove("plot-14.par.rep") 

# read 2020 stepwise 'NoEff'
untar("z:/yft/2020/assessment/ModelRuns/Stepwise/Step8NoEff/End.tar.gz", "plot-14.par.rep")
step9_NoEff <- read.MFCLRep("plot-14.par.rep")
file.remove("plot-14.par.rep")

# read 2020 diagnostic model
diag20 <- read.MFCLRep("z:/yft/2020/assessment/ModelRuns/Diagnostic/plot-14.par.rep")

taf.png("png/stepwise_2017_diag_basis")
col <- rich.colors(2)
plot(flr2taf(SBSBF0(diag17)), xlim=c(1950, 2020), ylab="SBSBF0", ylim = c(0,1), type = "l", lwd = 1, col = "black")
title(main="Searching for basis for the 2020 review")
lines(flr2taf(SBSBF0(step4_update)), lwd = 2, col= col[2])
lines(flr2taf(SBSBF0(step9_NoEff)), lwd = 2, col= col[1] )
lines(flr2taf(SBSBF0(diag20)), lwd = 2, col= "black")
dev.off()
