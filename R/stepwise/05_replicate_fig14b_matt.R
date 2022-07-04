library(TAF)
library(FLR4MFCL)
library(diags4MFCL)  # plot.depletion
library(ggplot2)
source("utilities.R")  # read.plot.rep, reverse

mkdir("pdf")

penguin <- "z:/yft/2020_review/analysis/stepwise"
Diag20 <- read.MFCLRep("z:/yft/2020/assessment/ModelRuns/Diagnostic/plot-14.par.rep")

IdxNoEff <- read.plot.rep(file.path(penguin, "09_IdxNoeff"))
SelUngroup <- read.MFCLRep(file.path(penguin, "10_SelUngroup/plot-12.par.rep"))
JPTP <- read.plot.rep(file.path(penguin, "11_JPTP"))
Age10LW <- read.plot.rep(file.path(penguin, "12_Age10LW_HopefulReport"))
CondAge <- read.plot.rep(file.path(penguin, "13_CondAge"))
MatLength <- read.plot.rep(file.path(penguin, "14_MatLength"))
NoSpnFrac <- read.plot.rep(file.path(penguin, "15_NoSpnFrac"))
Size60 <- read.plot.rep(file.path(penguin, "16_Size60"))
Diag20 <- read.MFCLRep(file.path(penguin, "17_Diag20/plot-14.par.rep"))


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
