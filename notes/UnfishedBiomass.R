library(FLR4MFCL)
library(TAF)

# xyplot(data~year|area, group=qname,
#        data=FLQuants(qts(adultBiomass_nofish(rep20)), qts(adultBiomass_nofish(rep17)), qts(adultBiomass_nofish(rep14))),
#        type="l", as.table=TRUE, main="Unfished biomass")
# 
# xyplot(data~year|area, group=qname,
#        data=FLQuants(qts(adultBiomass(rep20)), qts(adultBiomass(rep17)), qts(adultBiomass(rep14))),
#        type="l", as.table=TRUE, main="Fished biomass")

# rep07 <- read.MFCLRep("d:/x/temp2/BaseYFT/plot.final.rep")
# rep09 <- read.MFCLRep("d:/x/temp2/YFTBase09/final-final.rep")
# rep11 <- read.MFCLRep("d:/x/temp2/2011_YFT_basecase/plot-final.par.rep")

rep09 <- read.MFCLRep("z:/yft/2020_review/analysis/historical_assessments/yft2009/YFTBase09/final-final.rep")
rep11 <- read.MFCLRep("z:/yft/2020_review/analysis/historical_assessments/yft2011/2011_YFT_basecase/plot-final.par.rep")
rep14 <- read.MFCLRep("z:/yft/2014/assessment/RefCase/plot-12.par.rep")
rep17 <- read.MFCLRep("z:/yft/2017/assessment/Model_Runs/For_Web/plot-14.par.rep")
rep20 <- read.MFCLRep("z:/yft/2020/assessment/ModelRuns/Diagnostic/plot-14.par.rep")

# Biomass
B.09 <- flr2taf(SB(rep09), "B")
B.11 <- flr2taf(SB(rep11), "B")
B.14 <- flr2taf(SB(rep14), "B")
B.17 <- flr2taf(SB(rep17), "B")
B.20 <- flr2taf(SB(rep20), "B")

plot(NA, xlim=c(1950,2020), ylim=c(0,9), yaxs="i", xlab="Year", ylab="SB (million t)", main = "Spawning Biomass")
legend("topright", c("2009", "2011", "2014", "2017", "2020"), col = c(5,4,3,2,1), lty = 1, lwd = 2, box.lty = 0, inset= 0.01)
abline(h=seq(0,9,by=1), col="gray", lwd=0.5)
lines(div(B.09, 2, 1e6), lwd=2, col=5)
lines(div(B.11, 2, 1e6), lwd=2, col=4)
lines(div(B.14, 2, 1e6), lwd=2, col=3)
lines(div(B.17, 2, 1e6), lwd=2, col=2)
lines(div(B.20, 2, 1e6), lwd=2, col=1)
box()

# Dynamic B0
B0.09 <- flr2taf(SBF0(rep09), "B0")
B0.11 <- flr2taf(SBF0(rep11), "B0")
B0.14 <- flr2taf(SBF0(rep14), "B0")
B0.17 <- flr2taf(SBF0(rep17), "B0")
B0.20 <- flr2taf(SBF0(rep20), "B0")

plot(NA, xlim=c(1950,2020), ylim=c(0,9), yaxs="i", xlab="Year", ylab="SBF=0 (million t)", main = "Unfished Biomass")
legend("topright", c("2009", "2011", "2014", "2017", "2020"), col = c(5,4,3,2,1), lty = 1, lwd = 2, box.lty = 0, inset= 0.01)
abline(h=seq(0,9,by=1), col="gray", lwd=0.5)
lines(div(B0.09, 2, 1e6), lwd=2, col=5)
lines(div(B0.11, 2, 1e6), lwd=2, col=4)
lines(div(B0.14, 2, 1e6), lwd=2, col=3)
lines(div(B0.17, 2, 1e6), lwd=2, col=2)
lines(div(B0.20, 2, 1e6), lwd=2, col=1)
box()

# Depletion (instantaneous)
Dep.09 <- data.frame(Year=B.09$Year, Dep=B.09$B/B0.09$B0)
Dep.11 <- data.frame(Year=B.11$Year, Dep=B.11$B/B0.11$B0)
Dep.14 <- data.frame(Year=B.14$Year, Dep=B.14$B/B0.14$B0)
Dep.17 <- data.frame(Year=B.17$Year, Dep=B.17$B/B0.17$B0)
Dep.20 <- data.frame(Year=B.20$Year, Dep=B.20$B/B0.20$B0)

plot(NA, xlim=c(1950,2020), ylim=c(0,1), yaxs="i", xlab="Year", ylab="SB / SBF=0", main = "Depletion")
legend("topright", c("2009", "2011", "2014", "2017", "2020"), col = c(5,4,3,2,1), lty = 1, lwd = 2, box.lty = 0, inset= 0.01)
abline(h=seq(0,1,by=0.1), col="gray", lwd=0.5)
lines(Dep.09, lwd=2, col=5)
lines(Dep.11, lwd=2, col=4)
lines(Dep.14, lwd=2, col=3)
lines(Dep.17, lwd=2, col=2)
lines(Dep.20, lwd=2, col=1)
box()

# Scaled Biomass
ScaledB.09 <- data.frame(Year=B.09$Year, ScaledB=B.09$B/B.09$B[1])
ScaledB.11 <- data.frame(Year=B.11$Year, ScaledB=B.11$B/B.11$B[1])
ScaledB.14 <- data.frame(Year=B.14$Year, ScaledB=B.14$B/B.14$B[1])
ScaledB.17 <- data.frame(Year=B.17$Year, ScaledB=B.17$B/B.17$B[1])
ScaledB.20 <- data.frame(Year=B.20$Year, ScaledB=B.20$B/B.20$B[1])

# ScaledB.14 <- data.frame(Year=B.14$Year, ScaledB=B.14$B/mean(B.14$B))
# ScaledB.17 <- data.frame(Year=B.17$Year, ScaledB=B.17$B/mean(B.17$B))
# ScaledB.20 <- data.frame(Year=B.20$Year, ScaledB=B.20$B/mean(B.20$B))

plot(NA, xlim=c(1950,2020), ylim=c(0,1.4), yaxs="i", xlab="Year", ylab="Scaled SB", main = "Relative Spawning Biomass")
legend("topright", c("2009", "2011", "2014", "2017", "2020"), col = c(5,4,3,2,1), lty = 1, lwd = 2, box.lty = 0, inset= 0.01)
abline(h=seq(0,1.4,by=0.1), col="gray", lwd=0.5)
lines(ScaledB.09, lwd=2, col=5)
lines(ScaledB.11, lwd=2, col=4)
lines(ScaledB.14, lwd=2, col=3)
lines(ScaledB.17, lwd=2, col=2)
lines(ScaledB.20, lwd=2, col=1)
box()

# Scaled B0
ScaledB0.09 <- data.frame(Year=B0.09$Year, ScaledB0=B0.09$B0/B0.09$B0[1])
ScaledB0.11 <- data.frame(Year=B0.11$Year, ScaledB0=B0.11$B0/B0.11$B0[1])
ScaledB0.14 <- data.frame(Year=B0.14$Year, ScaledB0=B0.14$B0/B0.14$B0[1])
ScaledB0.17 <- data.frame(Year=B0.17$Year, ScaledB0=B0.17$B0/B0.17$B0[1])
ScaledB0.20 <- data.frame(Year=B0.20$Year, ScaledB0=B0.20$B0/B0.20$B0[1])

# ScaledB0.14 <- data.frame(Year=B0.14$Year, ScaledB0=B0.14$B0/mean(B0.14$B0))
# ScaledB0.17 <- data.frame(Year=B0.17$Year, ScaledB0=B0.17$B0/mean(B0.17$B0))
# ScaledB0.20 <- data.frame(Year=B0.20$Year, ScaledB0=B0.20$B0/mean(B0.20$B0))

plot(NA, xlim=c(1950,2020), ylim=c(0,1.4), yaxs="i", xlab="Year", ylab="Scaled SBF=0", main = "Relative Unfished Biomass")
legend("topright", c("2009", "2011", "2014", "2017", "2020"), col = c(5,4,3,2,1), lty = 1, lwd = 2, box.lty = 0, inset= 0.01)
abline(h=seq(0,1.4,by=0.1), col="gray", lwd=0.5)
lines(ScaledB0.09, lwd=2, col=5)
lines(ScaledB0.11, lwd=2, col=4)
lines(ScaledB0.14, lwd=2, col=3)
lines(ScaledB0.17, lwd=2, col=2)
lines(ScaledB0.20, lwd=2, col=1)
box()


# Biomass recent (averaged over the last 4 years)
Br.09 <- flr2taf(SBrecent(rep09), "Br")
Br.11 <- flr2taf(SBrecent(rep11), "Br")
Br.14 <- flr2taf(SBrecent(rep14), "Br")
Br.17 <- flr2taf(SBrecent(rep17), "Br")
Br.20 <- flr2taf(SBrecent(rep20), "Br")

plot(NA, xlim=c(1950,2020), ylim=c(0,9), yaxs="i", xlab="Year", ylab="SB (million t)", main = "Spawning Biomass (recent)")
legend("topright", c("2009", "2011", "2014", "2017", "2020"), col = c(5,4,3,2,1), lty = 1, lwd = 2, box.lty = 0, inset= 0.01)
abline(h=seq(0,9,by=1), col="gray", lwd=0.5)
lines(div(Br.09, 2, 1e6), lwd=2, col=5)
lines(div(Br.11, 2, 1e6), lwd=2, col=4)
lines(div(Br.14, 2, 1e6), lwd=2, col=3)
lines(div(Br.17, 2, 1e6), lwd=2, col=2)
lines(div(Br.20, 2, 1e6), lwd=2, col=1)
box()

# Dynamic B0 (averaged over 10 of the last 11 years)
B0r.09 <- flr2taf(SBF0recent(rep09), "B0r")
B0r.11 <- flr2taf(SBF0recent(rep11), "B0r")
B0r.14 <- flr2taf(SBF0recent(rep14), "B0r")
B0r.17 <- flr2taf(SBF0recent(rep17), "B0r")
B0r.20 <- flr2taf(SBF0recent(rep20), "B0r")

plot(NA, xlim=c(1950,2020), ylim=c(0,9), yaxs="i", xlab="Year", ylab="SBF=0 (million t)", main = "Unfished Biomass (10 years)")
legend("topright", c("2009", "2011", "2014", "2017", "2020"), col = c(5,4,3,2,1), lty = 1, lwd = 2, box.lty = 0, inset= 0.01)
abline(h=seq(0,9,by=1), col="gray", lwd=0.5)
lines(div(B0r.09, 2, 1e6), lwd=2, col=5)
lines(div(B0r.11, 2, 1e6), lwd=2, col=4)
lines(div(B0r.14, 2, 1e6), lwd=2, col=3)
lines(div(B0r.17, 2, 1e6), lwd=2, col=2)
lines(div(B0r.20, 2, 1e6), lwd=2, col=1)
box()

# Depletion (as used by management - not instantaneous)
Depr.09 <- data.frame(Year=Br.09$Year, Dep=Br.09$Br/B0r.09$B0r)
Depr.11 <- data.frame(Year=Br.11$Year, Dep=Br.11$Br/B0r.11$B0r)
Depr.14 <- data.frame(Year=Br.14$Year, Dep=Br.14$Br/B0r.14$B0r)
Depr.17 <- data.frame(Year=Br.17$Year, Dep=Br.17$Br/B0r.17$B0r)
Depr.20 <- data.frame(Year=Br.20$Year, Dep=Br.20$Br/B0r.20$B0r)

plot(NA, xlim=c(1950,2020), ylim=c(0,1.0), yaxs="i", xlab="Year", ylab="SB / SBF=0", main = "Depletion (averaged)")
legend("topright", c("2009", "2011", "2014", "2017", "2020"), col = c(5,4,3,2,1), lty = 1, lwd = 2, box.lty = 0, inset= 0.01)
abline(h=seq(0,1,by=0.1), col="gray", lwd=0.5)
lines(Depr.09, lwd=2, col=5)
lines(Depr.11, lwd=2, col=4)
lines(Depr.14, lwd=2, col=3)
lines(Depr.17, lwd=2, col=2)
lines(Depr.20, lwd=2, col=1)
box()


# Scaled Biomass (averaged over the last 4 years - by hand)
ScaledBr.09 <- data.frame(Year=Br.09$Year, ScaledB=Br.09$Br/Br.09$Br[4])
ScaledBr.11 <- data.frame(Year=Br.11$Year, ScaledB=Br.11$Br/Br.11$Br[4])
ScaledBr.14 <- data.frame(Year=Br.14$Year, ScaledB=Br.14$Br/Br.14$Br[4])
ScaledBr.17 <- data.frame(Year=Br.17$Year, ScaledB=Br.17$Br/Br.17$Br[4])
ScaledBr.20 <- data.frame(Year=Br.20$Year, ScaledB=Br.20$Br/Br.20$Br[4])

# ScaledB.14 <- data.frame(Year=B.14$Year, ScaledB=B.14$B/mean(B.14$B))
# ScaledB.17 <- data.frame(Year=B.17$Year, ScaledB=B.17$B/mean(B.17$B))
# ScaledB.20 <- data.frame(Year=B.20$Year, ScaledB=B.20$B/mean(B.20$B))

plot(NA, xlim=c(1950,2020), ylim=c(0,1.4), yaxs="i", xlab="Year", ylab="Scaled SB", main = "Relative Spawning Biomass (recent)")
legend("topright", c("2009", "2011", "2014", "2017", "2020"), col = c(5,4,3,2,1), lty = 1, lwd = 2, box.lty = 0, inset= 0.01)
abline(h=seq(0,1.4,by=0.1), col="gray", lwd=0.5)
lines(ScaledBr.09, lwd=2, col=5)
lines(ScaledBr.11, lwd=2, col=4)
lines(ScaledBr.14, lwd=2, col=3)
lines(ScaledBr.17, lwd=2, col=2)
lines(ScaledBr.20, lwd=2, col=1)
box()

# Scaled B0 (averaged over 10 of the last 11 years - by hand)
ScaledB0r.09 <- data.frame(Year=B0r.09$Year, ScaledB0r=B0r.09$B0r/B0r.09$B0r[11])
ScaledB0r.11 <- data.frame(Year=B0r.11$Year, ScaledB0r=B0r.11$B0r/B0r.11$B0r[11])
ScaledB0r.14 <- data.frame(Year=B0r.14$Year, ScaledB0r=B0r.14$B0r/B0r.14$B0r[11])
ScaledB0r.17 <- data.frame(Year=B0r.17$Year, ScaledB0r=B0r.17$B0r/B0r.17$B0r[11])
ScaledB0r.20 <- data.frame(Year=B0r.20$Year, ScaledB0r=B0r.20$B0r/B0r.20$B0r[11])

# ScaledB0.14 <- data.frame(Year=B0.14$Year, ScaledB0=B0.14$B0/mean(B0.14$B0))
# ScaledB0.17 <- data.frame(Year=B0.17$Year, ScaledB0=B0.17$B0/mean(B0.17$B0))
# ScaledB0.20 <- data.frame(Year=B0.20$Year, ScaledB0=B0.20$B0/mean(B0.20$B0))

plot(NA, xlim=c(1950,2020), ylim=c(0,1.4), yaxs="i", xlab="Year", ylab="Scaled SBF=0", main = "Relative Unfished Biomass (10 years)")
legend("topright", c("2009", "2011", "2014", "2017", "2020"), col = c(5,4,3,2,1), lty = 1, lwd = 2, box.lty = 0, inset= 0.01)
abline(h=seq(0,1.4,by=0.1), col="gray", lwd=0.5)
lines(ScaledB0r.09, lwd=2, col=5)
lines(ScaledB0r.11, lwd=2, col=4)
lines(ScaledB0r.14, lwd=2, col=3)
lines(ScaledB0r.17, lwd=2, col=2)
lines(ScaledB0r.20, lwd=2, col=1)
box()


# FLR4MFCL depletion (instantaneous)
SBSBF0.09 <- flr2taf(SBSBF0(rep09), "B")
SBSBF0.11 <- flr2taf(SBSBF0(rep11), "B")
SBSBF0.14 <- flr2taf(SBSBF0(rep14), "B")
SBSBF0.17 <- flr2taf(SBSBF0(rep17), "B")
SBSBF0.20 <- flr2taf(SBSBF0(rep20), "B")

plot(NA, xlim=c(1950,2020), ylim=c(0,1.0), yaxs="i", xlab="Year", ylab="SB / SBF=0", main = "FLR4MFCL Depletion (instantaneous)")
legend("topright", c("2009", "2011", "2014", "2017", "2020"), col = c(5,4,3,2,1), lty = 1, lwd = 2, box.lty = 0, inset= 0.01)
abline(h=seq(0,1.4,by=0.1), col="gray", lwd=0.5)
lines(SBSBF0.09, lwd=2, col=5)
lines(SBSBF0.11, lwd=2, col=4)
lines(SBSBF0.14, lwd=2, col=3)
lines(SBSBF0.17, lwd=2, col=2)
lines(SBSBF0.20, lwd=2, col=1)
box()


# FLR4MFCL depletion (averaged )
SBSBF0r.09 <- flr2taf(SBSBF0recent(rep09), "B")
SBSBF0r.11 <- flr2taf(SBSBF0recent(rep11), "B")
SBSBF0r.14 <- flr2taf(SBSBF0recent(rep14), "B")
SBSBF0r.17 <- flr2taf(SBSBF0recent(rep17), "B")
SBSBF0r.20 <- flr2taf(SBSBF0recent(rep20), "B")

plot(NA, xlim=c(1950,2020), ylim=c(0,1.0), yaxs="i", xlab="Year", ylab="SB / SBF=0", main = "FLR4MFCL Depletion (averaged)")
legend("topright", c("2009", "2011", "2014", "2017", "2020"), col = c(5,4,3,2,1), lty = 1, lwd = 2, box.lty = 0, inset= 0.01)
abline(h=seq(0,1.4,by=0.1), col="gray", lwd=0.5)
lines(SBSBF0r.09, lwd=2, col=5)
lines(SBSBF0r.11, lwd=2, col=4)
lines(SBSBF0r.14, lwd=2, col=3)
lines(SBSBF0r.17, lwd=2, col=2)
lines(SBSBF0r.20, lwd=2, col=1)
box()

########### REDUNDANT from here down ##################

# FLR4MFCL depletion #2 (done by hand - no longer needed now we have found SBSBF0recent)
SB.09 <- flr2taf(SB(rep09, mean_nyears=4), "SB")
SB.11 <- flr2taf(SB(rep11, mean_nyears=4), "SB")
SB.14 <- flr2taf(SB(rep14, mean_nyears=4), "SB")
SB.17 <- flr2taf(SB(rep17, mean_nyears=4), "SB")
SB.20 <- flr2taf(SB(rep20, mean_nyears=4), "SB")

SBF0.09 <- flr2taf(SBF0(rep09, mean_nyears=10, lag_nyears=1), "SBF0")
SBF0.11 <- flr2taf(SBF0(rep11, mean_nyears=10, lag_nyears=1), "SBF0")
SBF0.14 <- flr2taf(SBF0(rep14, mean_nyears=10, lag_nyears=1), "SBF0")
SBF0.17 <- flr2taf(SBF0(rep17, mean_nyears=10, lag_nyears=1), "SBF0")
SBF0.20 <- flr2taf(SBF0(rep20, mean_nyears=10, lag_nyears=1), "SBF0")


SB_SBF0.09 <- SB.09
SB_SBF0.11 <- SB.11
SB_SBF0.14 <- SB.14
SB_SBF0.17 <- SB.17
SB_SBF0.20 <- SB.20

SB_SBF0.09[,2] <- SB.09[,2]/SBF0.09[,2]
SB_SBF0.11[,2] <- SB.11[,2]/SBF0.11[,2]
SB_SBF0.14[,2] <- SB.14[,2]/SBF0.14[,2]
SB_SBF0.17[,2] <- SB.17[,2]/SBF0.17[,2]
SB_SBF0.20[,2] <- SB.20[,2]/SBF0.20[,2]

plot(NA, xlim=c(1950,2020), ylim=c(0,1.0), yaxs="i", xlab="Year", ylab="SB / SBF=0", main = "FLR4MFCL Depletion (by hand, averaged)")
legend("topright", c("2009", "2011", "2014", "2017", "2020"), col = c(5,4,3,2,1), lty = 1, lwd = 2, box.lty = 0, inset= 0.01)
abline(h=seq(0,1.4,by=0.1), col="gray", lwd=0.5)
lines(SB_SBF0.09, lwd=2, col=5)
lines(SB_SBF0.11, lwd=2, col=4)
lines(SB_SBF0.14, lwd=2, col=3)
lines(SB_SBF0.17, lwd=2, col=2)
lines(SB_SBF0.20, lwd=2, col=1)
box()
