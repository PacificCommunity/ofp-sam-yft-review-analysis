library(FLR4MFCL)

folder <- "//penguin/assessments/yft/2020_review/analysis/stepwise/17_Diag20"
diag.frq <- read.MFCLFrq(file.path(folder, "yft.frq"))

cpue <- realisations(diag.frq)  # remove size and length frequencies
cpue <- cpue[cpue$fishery %in% 33:41,]
cpue$area <- cpue$fishery - 32
cpue$obs <- cpue$catch / cpue$effort
cpue$obs[cpue$obs < 0] <- NA  # replace -1 with NA
## 2412 rows = 67 years x 4 seasons x 9 areas

## Tabulate average CPUE by region
mean_cpue <- aggregate(obs~area, cpue, mean)
names(mean_cpue)[2] <- "mean_cpue"

## Plot CPUE like Fig 16 in assmt report
dir.create("pdf", showWarnings=FALSE)
pdf("pdf/cpue_from_frq.pdf")
xyplot(obs~I(year+month/12)|as.character(area), cpue,
       ylim=c(0,NA), layout=c(3,3), as.table=TRUE, scales="free",
       pch=16, cex=0.5, xlab="Year", ylab="CPUE", main="frq")
dev.off()
