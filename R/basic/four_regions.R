library(TAF)

load("../shiny/stepwise-2020/app/data/other_data.Rdata")
load("../shiny/stepwise-2020/app/data/fishery_map.Rdata")
catch <- read.table("z:/yft/2020_review/analysis/stepwise/17_Diag20/catch.rep",
                    skip=3)

domain <- data.frame(Region=1:9,
                     Domain=c("TempN", "TempN", "Tropical", "Tropical", "TempS",
                              "TempS", "Tropical", "Tropical", "TempS"))
domain$Domain <- ordered(domain$Domain, levels=c("TempN", "Tropical", "TempS"))

b <- biomass_dat[biomass_dat$year==2018 & biomass_dat$model=="17_Diag20",]
b <- data.frame(Area=b$area, SB=b$SB/1000)[b$area!="All",]
b$Domain <- domain$Domain
b.agg <- aggregate(SB~Domain, b, sum)
tapply(b.agg$SB, substring(b.agg$Domain,1,4), sum)

y <- catch
colnames(y) <- rep(1952:2018, each=4)
y <- xtab2long(y, c("Fishery", "Year", "Catch"))
y$Year <- as.integer(y$Year)
y <- aggregate(Catch~Fishery, y, sum, subset=Year==2018)
y$Region <- fishery_map$region
y <- aggregate(Catch~Region, y, sum)
y$Domain <- domain$Domain
y.agg <- aggregate(Catch~Domain, y, sum)
tapply(y.agg$Catch, substring(y.agg$Domain,1,4), sum)
