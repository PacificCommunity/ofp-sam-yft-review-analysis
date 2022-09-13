library(TAF)

load("../shiny/stepwise-2020/app/data/other_data.Rdata")
load("../shiny/stepwise-2020/app/data/fishery_map.Rdata")
catch <- read.table("z:/yft/2020_review/analysis/stepwise/17_Diag20/catch.rep",
                    skip=3)

region <- data.frame(ID=1:9,
                     Region=c("North", "North", "Central", "Central", "South",
                              "South", "IndoPhil", "Central", "South"),
                     Domain=c("NS", "NS", "IC", "IC", "NS",
                              "NS", "IC", "IC", "NS"))

b <- biomass_dat[biomass_dat$year==2018 & biomass_dat$model=="17_Diag20",]
b <- data.frame(Area=b$area, SB=b$SB/1000)[b$area!="All",]
b <- cbind(b, Region=region$Region, Domain=region$Domain)
aggregate(SB~Domain, b, sum)

y <- catch
colnames(y) <- rep(1952:2018, each=4)
y <- xtab2long(y, c("Fishery", "Year", "Catch"))
y$Year <- as.integer(y$Year)
y <- aggregate(Catch~Fishery, y, sum, subset=Year==2018)
y$Region <- fishery_map$region
y <- aggregate(Catch~Region, y, sum)
y <- cbind(y, Region=region$Region, Domain=region$Domain)
aggregate(Catch~Domain, y, sum)
