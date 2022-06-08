library(TAF)
library(FLR4MFCL)
library(gplots)

# read 2020 stepwise 'SelUngroup' (main)
untar("z:/yft/2020/assessment/ModelRuns/Stepwise/Step9SelChange/End.tar.gz", "plot-14.par.rep")
step10_SelUngroup <- read.MFCLRep("plot-14.par.rep")
file.remove("plot-14.par.rep")

# read 2020 stepwise 'SelUngroup' A
untar("z:/yft/2020/assessment/ModelRuns/Stepwise/Step9aUngroupSel/End.tar.gz", "plot-14.par.rep")
step10a_SelUngroup <- read.MFCLRep("plot-14.par.rep")
file.remove("plot-14.par.rep")

# read 2020 stepwise 'SelUngroup' B
untar("z:/yft/2020/assessment/ModelRuns/Stepwise/Step9bUngroupAsym/End.tar.gz", "plot-14.par.rep")
step10b_SelUngroup <- read.MFCLRep("plot-14.par.rep")
file.remove("plot-14.par.rep")

# read 2020 stepwise 'SelUngroup' C
untar("z:/yft/2020/assessment/ModelRuns/Stepwise/Step9cUngroupAsymAge2/End.tar.gz", "plot-14.par.rep")
step10c_SelUngroup <- read.MFCLRep("plot-14.par.rep")
file.remove("plot-14.par.rep")

# read 2020 stepwise 'SelUngroup' AA
step10aa_SelUngroup <- read.MFCLRep("z:/yft/2020/assessment/ModelRuns/Stepwise/Step9aaNoAge0Ungroup/plot-10.par.rep")

taf.png("png/stepwise_selectivities")
col <- rich.colors(3)
plot(flr2taf(SBSBF0(step10_SelUngroup)), xlim=c(1980, 2020), ylim = c(0.4,0.8), type = "l", lwd = 1, col = "black")
lines(flr2taf(SBSBF0(step10a_SelUngroup)), lwd = 2, col= col[3])
lines(flr2taf(SBSBF0(step10b_SelUngroup)), lwd = 2, col= col[2])
lines(flr2taf(SBSBF0(step10c_SelUngroup)), lwd = 2, col= col[1])
dev.off()
