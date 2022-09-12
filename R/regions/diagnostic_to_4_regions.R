library(FLR4MFCL)
library(TAF)

# Read diagnostic model
Diag20 <- read.MFCLRep(file.path("z:/yft/2020_review/analysis/stepwise",
                                 "17_Diag20/plot-14.par.rep"))

# Extract depletion, biomass, unfished
cols <- c("year", "area", "data")
biomass   <- as.data.frame(SB(Diag20,     combine_areas=FALSE))[cols]
unfished  <- as.data.frame(SBF0(Diag20,   combine_areas=FALSE))[cols]

# Store year and area as integers
biomass <- type.convert(biomass, as.is=TRUE)
unfished <- type.convert(unfished, as.is=TRUE)

# Combine regions
addDomain <- function(x)
{
  x$domain <- NA_character_
  x$domain[x$area %in% c(1,2)]   <- "North"
  x$domain[x$area %in% c(3,4,8)] <- "Central"
  x$domain[x$area %in% c(7)] <- "IndoPhil"
  x$domain[x$area %in% c(5,6,9)] <- "South"
  x
}

biomass <- aggregate(data~year+domain, addDomain(biomass), sum)
unfished <- aggregate(data~year+domain, addDomain(unfished), sum)

# Calculate depletion
depletion <- biomass
depletion$data <- biomass$data / unfished$data

# Plot
years <- sort(unique(depletion$year))

mkdir("pdf")
pdf("pdf/diagnostic_to_4_regions.pdf", width=12, height=6)
par(mfrow=c(1,3))
barplot(data/1e6~domain+year, biomass, col=2:5, legend=TRUE,
        xlab="Year", ylab="Spawning biomass (million t)")
barplot(data/1e6~domain+year, unfished, col=2:5, legend=TRUE,
        xlab="Year", ylab="Unfished biomass (million t)")
matplot(years, xtabs(data~year+domain, depletion), type="l", col=2:5,
        lty=1, lwd=2, ylim=0:1, xlab="Year", ylab="SB / SBF=0")
dev.off()

pdf("pdf/diagnostic_to_4_regions_alt.pdf", width=12, height=6)
par(mfrow=c(1,3))
matplot(years, xtabs(data~year+domain, biomass)/1e6, type="l", col=2:5, lty=1,
        lwd=2, ylim=lim(biomass$dat/1e6, 1.05), xlab="Year",
        ylab="Spawning biomass (million t)")
matplot(years, xtabs(data~year+domain, unfished)/1e6, type="l", col=2:5, lty=1,
        lwd=2, ylim=lim(unfished$dat/1e6, 1.05), xlab="Year",
        ylab="Unfished biomass (million t)")
matplot(years, xtabs(data~year+domain, depletion), type="l", col=2:5, lty=1,
        lwd=2, ylim=0:1, xlab="Year", ylab="SB / SBF=0")
dev.off()

