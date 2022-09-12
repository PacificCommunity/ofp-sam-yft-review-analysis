library(FLR4MFCL)
library(TAF)

stepwise <- "z:/yft/2020_review/analysis/stepwise"
john <- "z:/yft/2020_review/analysis/review_runs/john"

Diag20 <- read.MFCLRep(file.path(stepwise, "17_Diag20", "plot-14.par.rep"))
AD_Diag2020_2017_tag_mix3 <-
  read.MFCLRep(file.path(john, "AD_Diag2020-2017-tag-mix3", "plot-14.par.rep"))

plot(NA, xlim=range(flr2taf(SBSBF0(Diag20))$Year),
     ylim=c(0,1), xlab="Year", ylab="SB / SBF=0")
abline(h=seq(0, 1, by=0.1), col="gray")
lines(flr2taf(SBSBF0(Diag20)), lwd=2, col="black")
lines(flr2taf(SBSBF0(AD_Diag2020_2017_tag_mix3)), lwd=2, col="red")
main <- paste0("AD_Diag2020_2017_tag_mix3")

################################################################################

gridfolder <- "z:/yft/2020/assessment/ModelRuns/Grid"

Size60 <- read.MFCLRep(
  file.path(gridfolder, "CondLen_M0.2_Size60_H0.8_Mix2", "plot-out.par.rep"))
Size20 <- read.MFCLRep(
  file.path(gridfolder, "CondLen_M0.2_Size20_H0.8_Mix2", "plot-out.par.rep"))
