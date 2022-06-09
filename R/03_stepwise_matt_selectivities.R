library(TAF)
library(FLR4MFCL)
library(gplots)

# read 2020 diagnostic model
diag20 <- read.MFCLRep("z:/yft/2020/assessment/ModelRuns/Diagnostic/plot-14.par.rep")

#path <- "z:/yft/2020/assessment/ModelRuns/Stepwise"
path <- "d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful"

# read 2020 stepwise 'SelUngroup' (main)
untar(file.path(path, "Step9SelChange/End.tar.gz"), "plot-14.par.rep")
step10_SelUngroup <- read.MFCLRep("plot-14.par.rep")
file.remove("plot-14.par.rep")

# read 2020 stepwise 'SelUngroup' A
untar(file.path(path, "Step9aUngroupSel/End.tar.gz"), "plot-14.par.rep")
step10a_SelUngroup <- read.MFCLRep("plot-14.par.rep")
file.remove("plot-14.par.rep")

# read 2020 stepwise 'SelUngroup' B
untar(file.path(path, "Step9bUngroupAsym/End.tar.gz"), "plot-14.par.rep")
step10b_SelUngroup <- read.MFCLRep("plot-14.par.rep")
file.remove("plot-14.par.rep")

# read 2020 stepwise 'SelUngroup' C
untar(file.path(path, "Step9cUngroupAsymAge2/End.tar.gz"), "plot-14.par.rep")
step10c_SelUngroup <- read.MFCLRep("plot-14.par.rep")
file.remove("plot-14.par.rep")

# read 2020 stepwise 'SelUngroup' AA
step10aa_SelUngroup <- read.MFCLRep(file.path(path, "Step9aaNoAge0Ungroup/plot-12.par.rep"))


pdf("pdf/stepwise_selectivities.pdf")
col <- rich.colors(4)
plot(NA, xlim=c(1950, 2020), ylim = c(0,1), xlab="Year", ylab="SBSBF0")
abline(h=seq(0, 1, by=0.1), col="lightgray", lty=3)
lines(flr2taf(SBSBF0(step10_SelUngroup)), lwd = 1, col = col[4])
#lines(flr2taf(SBSBF0(step10aa_SelUngroup)), lwd = 10, col= col[4])
lines(flr2taf(SBSBF0(step10a_SelUngroup)), lwd = 2, col= col[3])
lines(flr2taf(SBSBF0(step10b_SelUngroup)), lwd = 2, col= col[2])
lines(flr2taf(SBSBF0(step10c_SelUngroup)), lwd = 2, col= col[1])
lines(flr2taf(SBSBF0(diag20)), lwd = 2, col= "black")
dev.off()
