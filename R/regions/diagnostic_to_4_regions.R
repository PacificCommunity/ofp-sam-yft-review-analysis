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
