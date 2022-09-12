library(FLR4MFCL)
library(TAF)

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

# Plot
stdplot <- function(x, y, div=1, xlim, ylim, xlab, ylab, h=pretty(ylim),
                    ...)
{
  xlim <- if(missing(xlim)) range(x) else xlim
  ylim <- if(missing(ylim)) range(y$data) else ylim
  xlab <- if(missing(xlab)) "Year" else xlab
  ylab <- if(missing(ylab)) "Value" else ylab
  plot(NA, xlim=xlim, ylim=ylim, xlab=xlab, ylab=ylab, ...)
  abline(h=h, col="gray")
  matlines(x, xtabs(data~year+domain, data=y)/div, lty=1, ...)
  box()
}
