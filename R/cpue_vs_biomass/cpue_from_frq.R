library(FLR4MFCL)

geomean <- function(x) exp(mean(log(x)))

folder <- "z:/yft/2020_review/analysis/stepwise/17_Diag20"
diag.frq <- read.MFCLFrq(file.path(folder, "yft.frq"))

cpue <- freq(diag.frq)
cpue <- cpue[cpue$fishery %in% 33:41,]
cpue$area <- cpue$fishery - 32
cpue$value <- cpue$catch / cpue$effort
## 332,354 rows

## Repeated CPUE data because of weight comps
cpue[cpue$year==2000 & cpue$month==2 & cpue$area==1,]

## Use first CPUE value
cpue <- aggregate(value~year+month+area, cpue, head, 1)
# 2412 rows = 67 years x 4 seasons x 9 areas

## Average over years and seasons
mean_value <- aggregate(value~area, cpue, mean)
names(mean_value)[2] <- "mean_value"

geomean_value <- aggregate(value~area, cpue, geomean)
names(geomean_value)[2] <- "geomean_value"

mean_log_value <- aggregate(log(value)~area, cpue, mean)
names(mean_log_value)[2] <- "mean_log_value"

frq <- data.frame(mean_value, geomean_value[2], mean_log_value[2])
