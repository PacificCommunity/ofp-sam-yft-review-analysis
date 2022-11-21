library(FLR4MFCL)
library(TAF)

source("utilities.R")

mkdir("csv")
mkdir("pdf")

# Read diagnostic model
Diag20 <- read.MFCLRep(file.path("//penguin/assessments/yft/2020_review",
                                 "analysis/stepwise/17_Diag20/plot-14.par.rep"))

# Extract spawning biomass and unfished biomass
columns <- c("year", "area", "data")
biomass   <- as.data.frame(SB(Diag20, combine_areas=FALSE))[columns]
unfished  <- as.data.frame(SBF0(Diag20, combine_areas=FALSE))[columns]

# Store year and area as integers
biomass <- type.convert(biomass, as.is=TRUE)
unfished <- type.convert(unfished, as.is=TRUE)

# Combine regions
biomass <- aggregate(data~year+domain, addDomain(biomass), sum)
unfished <- aggregate(data~year+domain, addDomain(unfished), sum)

# Calculate depletion
depletion <- biomass
depletion$data <- biomass$data / unfished$data

# Current biomass
ssb4 <- biomass[biomass$year==2018, -1]
ssb4 <- data.frame(North=ssb4$data[ssb4$domain=="North"],
                   South=ssb4$data[ssb4$domain=="South"],
                   Central=ssb4$data[ssb4$domain=="Central"],
                   IndoPhil=ssb4$data[ssb4$domain=="IndoPhil"])
ssb4 <- ssb4 / 1000
ssb2 <- ssb4[c("North", "South")]
ssb4.prop <- prop.table(ssb4)
ssb2.prop <- prop.table(ssb2)

# Plot
year <- sort(unique(biomass$year))
domain <- sort(unique(biomass$domain))
colors <- palette()[c(2,7,4,5)]
lwd <- 2
pdf("pdf/diagnostic_to_4_regions.pdf", width=10, height=5)
par(mfrow=c(1,3))
stdplot(year, biomass, div=1e6, col=colors, lwd=lwd, yaxs="i",
        ylim=lim(biomass$dat/1e6, 1.05), ylab="Spawning biomass (million t)")
stdplot(year, unfished, div=1e6, col=colors, lwd=lwd, yaxs="i",
        ylim=lim(unfished$dat/1e6, 1.05), ylab="Unfished biomass (million t)",
        main="Original 2020 assessment results\n(plots of combined regions)")
stdplot(year, depletion, col=colors, lwd=lwd, ylim=c(0,1.04), ylab="SB / SBF=0",
        yaxs="i")
lines(flr2taf(SBSBF0(Diag20)))
legend("bottomleft", c(domain,"(All)"), lwd=c(lwd,lwd,lwd,lwd,1),
       col=c(colors,"black"), box.lty=0, bg="white", inset=c(0,0.09))
box()
dev.off()

# Write tables
write.taf(ssb2, dir="csv")
write.taf(ssb2.prop, dir="csv")
write.taf(ssb4, dir="csv")
write.taf(ssb4.prop, dir="csv")
