## Prepare plots and tables for report

## Before: prop.csv (output)
## After:  cpue_avg.png, cpue_bio_prop.png, cpue_cor.png, cpue_pairs.png,
##         cpue_region.png (report)

library(TAF)
source("utilities.R")

mkdir("report")

## Read results
cpue.avg <- read.taf("output/cpue_avg.csv")
cpue.cor <- read.taf("output/cpue_cor.csv")
cpue.region <- read.taf("output/cpue_region.csv")
prop <- read.taf("output/prop.csv")

## Plot region-to-region comparison of CPUE
areas <- sort(unique(cpue.region$area))
taf.png("cpue_pairs", height=1600, width=1600)
par(mfrow=c(length(areas), length(areas)), plt=c(0,1,0,1))
for(i in seq_along(areas))
  for(j in seq_along(areas))
    plot2series(i, j, cpue.region)
dev.off()

## Plot average CPUE
taf.png("cpue_avg")
barplot(cpue~area, cpue.avg)
dev.off()

## Plot proportions
taf.png("cpue_bio_prop")
col <- c("lightcyan2", "skyblue3")
barplot(cbind(cpue,biomass)~area, prop, beside=TRUE, col=NA, border=NA,
        ylim=c(0,0.22), xlab="Region", ylab="Proportion of total")
abline(h=c(0.05,0.10,0.15), col="gray")
barplot(cbind(cpue,biomass)~area, prop, beside=TRUE, col=col, add=TRUE)
legend("topleft", c("CPUE","Biomass"), fill=col, bty="n", inset=0.02)
box()
dev.off()

## Plot correlations
taf.png("cpue_cor", res=100)
labels <- paste(substring(cpue.cor$RegionA, 7, 7),
                substring(cpue.cor$RegionB, 7, 7), sep="-")
barplot(rev(cpue.cor$Corr), names=rev(labels), horiz=TRUE, las=1,
        xlab="Correlation")
dev.off()

## Plot coefficient of determination (R squared)
taf.png("cpue_r2", res=100)
labels <- paste(substring(cpue.r2$RegionA, 7, 7),
                substring(cpue.r2$RegionB, 7, 7), sep="-")
barplot(rev(cpue.r2$R2), names=rev(labels), horiz=TRUE, las=1, xlab="R2")
dev.off()
