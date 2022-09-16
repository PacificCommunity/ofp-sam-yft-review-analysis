library(FLR4MFCL)

geomean <- function(x) exp(mean(log(x)))

folder <- "//penguin/assessments/yft/2020_review/analysis/stepwise/17_Diag20"
diag.frq <- read.MFCLFrq(file.path(folder, "yft.frq"))

cpue <- freq(diag.frq)
cpue <- cpue[cpue$fishery %in% 33:41,]
cpue$area <- cpue$fishery - 32
cpue$obs <- cpue$catch / cpue$effort
## 332,354 rows

## Repeated CPUE data because of weight comps
cpue[cpue$year==2000 & cpue$month==2 & cpue$area==1,]

## Use first CPUE value
cpue <- aggregate(obs~year+month+area, cpue, head, 1)

## Replace -1 with NA
cpue$obs[cpue$obs < 0] <- NA
## 2412 rows = 67 years x 4 seasons x 9 areas

## Average over years and seasons
mean_obs <- aggregate(obs~area, cpue, mean)
names(mean_obs)[2] <- "mean_obs"

geomean_obs <- aggregate(obs~area, cpue, geomean)
names(geomean_obs)[2] <- "geomean_obs"

mean_log_obs <- aggregate(log(obs)~area, cpue, mean)
names(mean_log_obs)[2] <- "mean_log_obs"

frq <- data.frame(mean_obs, geomean_obs[2], mean_log_obs[2])
frq
