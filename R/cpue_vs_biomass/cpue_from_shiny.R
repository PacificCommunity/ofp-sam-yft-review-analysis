load("../shiny/stepwise-2020/app/data/other_data.Rdata")

cpue <- type.convert(cpue_dat, as.is=TRUE)
cpue$area <- cpue$fishery - 32L
cpue <- cpue[cpue$model == "17_Diag20",]
# 2412 rows = 67 years x 4 seasons x 9 areas

obs <- aggregate(cpue_obs~year+area, cpue, mean)  # average over seasons

obs <- aggregate(cpue_obs~area, cpue, mean)  # average over years

round(obs, 1)
