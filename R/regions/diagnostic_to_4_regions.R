library(FLR4MFCL)
library(TAF)

# Read diagnostic model
Diag20 <- read.MFCLRep(file.path("z:/yft/2020_review/analysis/stepwise",
                                 "17_Diag20/plot-14.par.rep"))

# Extract spawning biomass and unfished biomass
columns <- c("year", "area", "data")
biomass   <- as.data.frame(SB(Diag20, combine_areas=FALSE))[columns]
unfished  <- as.data.frame(SBF0(Diag20, combine_areas=FALSE))[columns]

# Store year and area as integers
biomass <- type.convert(biomass, as.is=TRUE)
unfished <- type.convert(unfished, as.is=TRUE)
year <- sort(unique(biomass$year))

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
colors <- palette()[c(2,7,4,5)]
lwd <- 2
mkdir("pdf")
pdf("pdf/diagnostic_to_4_regions.pdf", width=10, height=5)
par(mfrow=c(1,3))
matplot(year, xtabs(data~year+domain, biomass)/1e6,
        type="l", col=colors, lty=1, lwd=lwd, ylim=lim(biomass$dat/1e6, 1.05),
        xlab="Year", ylab="Spawning biomass (million t)")
matplot(year, xtabs(data~year+domain, unfished)/1e6, type="l",
        col=colors, lty=1, lwd=lwd, ylim=lim(unfished$dat/1e6, 1.05),
        xlab="Year", ylab="Unfished biomass (million t)")
matplot(year, xtabs(data~year+domain, depletion),
        type="l", col=colors, lty=1, lwd=lwd, ylim=0:1,
        xlab="Year", ylab="SB / SBF=0")
dev.off()
