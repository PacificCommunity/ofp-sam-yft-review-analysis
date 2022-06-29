library(TAF)
library(FLR4MFCL)
library(diags4MFCL)  # plot.depletion
library(ggplot2)
source("utilities.R")  # read.plot.rep, reverse

mkdir("pdf")

Diag20 <- read.MFCLRep("z:/yft/2020/assessment/ModelRuns/Diagnostic/plot-14.par.rep")

path.hopeful <- "d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful"
path.selstep <- "d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep"
path.altdiags <- "d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/AltDiags"

IdxNoEff <- read.plot.rep(file.path(path.hopeful, "Step8NoEff"))
SelUngroup <- read.MFCLRep(file.path(path.hopeful, "Step9aaNoAge0Ungroup/plot-12.par.rep"))
JPTP <- read.plot.rep(file.path(path.selstep, "Step12JPTP"))
Age10LW <- read.plot.rep(file.path(path.hopeful, "Step14LW"))
CondAge <- read.plot.rep(file.path(path.selstep, "Step15CondAgeLen"))
MatLength <- read.plot.rep(file.path(path.selstep, "Step16MatLength"))
NoSpnFrac <- read.plot.rep(file.path(path.selstep, "Step17NoSpawnFrac"))
Size60 <- read.plot.rep(file.path(path.altdiags, "CondVBSize60"))

stepwise <- list(IdxNoEff=IdxNoEff,
                SelUngroup=SelUngroup,
                JPTP=JPTP,
                Age10LW=Age10LW,
                CondAge=CondAge,
                MatLength=MatLength,
                NoSpnFrac=NoSpnFrac,
                Size60=Size60,
                Diag20=Diag20)

mkdir("pdf")
pdf("pdf/replicate_fig14b_matt.pdf")
plot.depletion(stepwise, palette.func=reverse) +
  scale_y_continuous(breaks = seq(0, 1, 0.1)) +
  theme(panel.grid.major.y=element_line(color="gray", size=0.5))
dev.off()
