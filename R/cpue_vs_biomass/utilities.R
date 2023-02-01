plot2series <- function(i, j, data)
{
  if(i > j)
  {
    frame()
  }
  else if(i == j)
  {
    plot(0, 0, pch=as.character(i), cex=2, axes=FALSE, ann=FALSE)
  }
  else
  {
    cpue1 <- data$cpue[data$area == i]
    cpue2 <- data$cpue[data$area == j]
    cpue1 <- cpue1 / mean(cpue1, na.rm=TRUE)
    cpue2 <- cpue2 / mean(cpue2, na.rm=TRUE)
    years <- sort(unique(cpue.region$year))
    plot(NA, xlim=range(years), ylim=lim(c(cpue1, cpue2)), ann=FALSE, axes=FALSE)
    lines(years, cpue1, col=4)
    lines(years, cpue2, col=2)
    box()
  }
}
