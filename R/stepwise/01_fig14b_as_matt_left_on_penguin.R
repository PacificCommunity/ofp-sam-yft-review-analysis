library(TAF)
library(FLR4MFCL)
library(diags4MFCL)  # plot.depletion
library(ggplot2)
source("utilities.R")  # read.plot.rep, reverse

mkdir("pdf")

Diag20 <- read.MFCLRep("z:/yft/2020/assessment/ModelRuns/Diagnostic/plot-14.par.rep")

path <- "z:/yft/2020/assessment/ModelRuns/Stepwise"

IdxNoEff <- read.plot.rep(file.path(path, "Step8NoEff"))
SelUngroup <- read.MFCLRep(file.path(path, "Step9aaNoAge0Ungroup/plot-10.par.rep"))  # SBF0 is NA
JPTP <- read.plot.rep(file.path(path, "Step12JPTP"))
Age10LW <- read.plot.rep(file.path(path, "Step14LW"))
CondAge <- read.plot.rep(file.path(path, "Step15CondAgeLen"))
MatLength <- Diag20  # Step16MaturityLength has no rep file
NoSpnFrac <- read.plot.rep(file.path(path, "Step17NoSpawnFrac"))
Size60 <- Diag20  # no Size60 folder

stepwise <- list(IdxNoEff=IdxNoEff,
                SelUngroup=SelUngroup,
                JPTP=JPTP,
                Age10LW=Age10LW,
                CondAge=CondAge,
                MatLength=MatLength,
                NoSpnFrac=NoSpnFrac,
                Size60=Size60,
                Diag20=Diag20)

pdf("pdf/fig14b_as_matt_left_on_penguin.pdf", width=9.5, height=9.5)
plot.depletion(stepwise, palette.func=reverse) +
  theme(panel.grid.major.y=element_line(color="gray", size=0.5),
        panel.grid.minor.y=element_line(color="gray", size=0.5))
dev.off()
