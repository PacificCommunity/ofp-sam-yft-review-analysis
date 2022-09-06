library(FLR4MFCL)
library(diags4MFCL)
library(TAF)

# Read
Diag17 <- read.MFCLRep("z:/yft/2017/assessment/Model_Runs/For_Web/plot-14.par.rep")
Diag20 <- read.MFCLRep("z:/yft/2020/assessment/ModelRuns/Diagnostic/plot-14.par.rep")

n17 <- apply(popN(Diag17), c("age","year","area"), mean)  # average over seasons
n17 <- as.matrix(ftable(age~year, data=n17))              # sum over regions
p17 <- proportions(n17, 1)

n20 <- apply(popN(Diag20), c("age","year","area"), mean)  # average over seasons
n20 <- as.matrix(ftable(age~year, data=n20))              # sum over regions
p20 <- proportions(n20, 1)

# Plot average N
par(mfrow=c(1,2))
barplot(colMeans(p17), main="Average N@A in Diag17")
barplot(colMeans(p20), main="Average N@A in Diag20")

# Plot growth
plot.growth(list(Diag20=Diag20, Diag17=Diag17))
