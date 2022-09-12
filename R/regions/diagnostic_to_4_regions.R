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
stdplot <- function(x, y, div=1, ...)
{
  matplot(x, xtabs(data~year+domain, data=y)/div, type="l", lty=1, xlab="Year",
          ...)
}
year <- sort(unique(biomass$year))
domain <- sort(unique(biomass$domain))
colors <- palette()[c(2,7,4,5)]
lwd <- 2
mkdir("pdf")
pdf("pdf/diagnostic_to_4_regions.pdf", width=10, height=5)
par(mfrow=c(1,3))
stdplot(year, biomass, div=1e6, col=colors, lwd=lwd,
        ylim=lim(biomass$dat/1e6, 1.05), ylab="Spawning biomass (million t)")
stdplot(year, unfished, div=1e6, col=colors, lwd=lwd,
        ylim=lim(unfished$dat/1e6, 1.05), ylab="Unfished biomass (million t)")
stdplot(year, depletion, col=colors, lwd=lwd, ylim=0:1, ylab="SB / SBF=0")
lines(flr2taf(SBSBF0(Diag20)))
legend("bottomleft", c(domain,"(All)"), lwd=c(lwd,lwd,lwd,lwd,1),
       col=c(colors,"black"), bty="n")

dev.off()
