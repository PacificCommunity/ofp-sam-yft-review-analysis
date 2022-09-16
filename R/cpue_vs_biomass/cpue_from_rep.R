library(FLR4MFCL)

geomean <- function(x) exp(mean(log(x)))

folder <- "z:/yft/2020_review/analysis/stepwise/17_Diag20"
diag.rep <- read.MFCLRep(file.path(folder, "plot-14.par.rep"))

cpue <- as.data.frame(cpue_obs(diag.rep))
cpue <- type.convert(cpue, as.is=TRUE)
cpue <- cpue[cpue$unit %in% 33:41,]
cpue$area <- cpue$unit - 32
cpue$obs <- exp(cpue$data)
## 2412 rows = 67 years x 4 seasons x 9 areas

## Average over years and seasons
mean_obs <- aggregate(obs~area, cpue, mean)
names(mean_obs)[2] <- "mean_obs"

geomean_obs <- aggregate(obs~area, cpue, geomean)
names(geomean_obs)[2] <- "geomean_obs"

mean_log_obs <- aggregate(log(obs)~area, cpue, mean)
names(mean_log_obs)[2] <- "mean_log_obs"

rep <- data.frame(mean_obs, geomean_obs[2], mean_log_obs[2])
rep
