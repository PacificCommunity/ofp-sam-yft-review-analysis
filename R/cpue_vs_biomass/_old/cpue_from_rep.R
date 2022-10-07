library(FLR4MFCL)

folder <- "//penguin//assessments/yft/2020_review/analysis/stepwise/17_Diag20"
diag.rep <- read.MFCLRep(file.path(folder, "plot-14.par.rep"))

cpue <- as.data.frame(cpue_obs(diag.rep))
cpue <- type.convert(cpue, as.is=TRUE)
cpue <- cpue[cpue$unit %in% 33:41,]
cpue$area <- cpue$unit - 32
cpue$obs <- cpue$data
## 2412 rows = 67 years x 4 seasons x 9 areas

## Tabulate average CPUE by region
mean_obs <- aggregate(obs~area, cpue, mean)
names(mean_obs)[2] <- "mean_obs"

## Plot CPUE like Fig 16 in assmt report
dir.create("pdf", showWarnings=FALSE)
pdf("pdf/cpue_from_rep.pdf")
xyplot(obs~I(year+season/4-1/8)|as.character(area), cpue,
       ylim=c(0,NA), layout=c(3,3), as.table=TRUE, scales="free",
       pch=16, cex=0.5, xlab="Year", ylab="CPUE", main="rep")
dev.off()
