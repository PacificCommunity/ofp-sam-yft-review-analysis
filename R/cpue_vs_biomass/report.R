## Prepare plots and tables for report

## Before: prop.csv (output)
## After:  cpue_bio_prop.png (report)

library(TAF)

mkdir("report")

## Read proportions
prop <- read.taf("output/prop.csv")

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
