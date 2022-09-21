library(lattice)

load("../shiny/stepwise-2020/app/data/other_data.Rdata")

cpue <- cpue_dat
cpue$area <- cpue$fishery - 32
cpue <- type.convert(cpue, as.is=TRUE)  # season is integer, etc.
cpue <- cpue[cpue$model == "17_Diag20",]
cpue$obs <- cpue$cpue_obs
## 2412 rows = 67 years x 4 seasons x 9 areas

## Tabulate average CPUE by region
mean_obs <- aggregate(obs~area, cpue, mean)
names(mean_obs)[2] <- "mean_obs"

## Plot CPUE like Fig 16 in assmt report
dir.create("pdf", showWarnings=FALSE)
pdf("pdf/cpue_from_shiny.pdf")
xyplot(log(obs)~I(year+season/4-1/8)|as.character(area), cpue,
       ylim=c(0,NA), layout=c(3,3), as.table=TRUE, scales="free",
       pch=16, cex=0.5, xlab="Year", ylab="CPUE", main="shiny")
dev.off()
