load("../shiny/stepwise-2020/app/data/other_data.Rdata")

geomean <- function(x) exp(mean(log(x)))

cpue <- cpue_dat
cpue$area <- cpue$fishery - 32
cpue <- cpue[cpue$model == "17_Diag20",]
cpue$obs <- cpue$cpue_obs
## 2412 rows = 67 years x 4 seasons x 9 areas

## Average over years and seasons
mean_obs <- aggregate(obs~area, cpue, mean)
names(mean_obs)[2] <- "mean_obs"

geomean_obs <- aggregate(obs~area, cpue, geomean)
names(geomean_obs)[2] <- "geomean_obs"

mean_log_obs <- aggregate(log(obs)~area, cpue, mean)
names(mean_log_obs)[2] <- "mean_log_obs"

shiny <- data.frame(mean_obs, geomean_obs[2], mean_log_obs[2])
shiny
