library(TAF)
library(FLR4MFCL)
library(gplots)
library(diags4MFCL)  # plot.depletion
library(ggplot2)

# read 2020 diagnostic model
diag20 <- read.MFCLRep("z:/yft/2020/assessment/ModelRuns/Diagnostic/plot-14.par.rep")

path <- "z:/yft/2020/assessment/ModelRuns/Stepwise"

IdxNoEff <- read.plot.rep(file.path(path, "Step8NoEff"))
SelUngroup <- read.MFCLRep(file.path(path, "Step9aaNoAge0Ungroup/plot-10.par.rep"))
JPTP <- read.plot.rep(file.path(path, "Step12JPTP"))
Age10LW <- read.plot.rep(file.path(path, "Step14LW"))
CondAge <- read.plot.rep(file.path(path, "Step15CondAgeLen"))
# MatLength <- read.plot.rep(file.path(path, "Step16MatLength"))
NoSpnFrac <- read.plot.rep(file.path(path, "Step17NoSpawnFrac"))


read.plot.rep <- function(folder)
{
  # folder contains End.tar.gz
  # this function reads the plot-*-par.rep that has the highest phase number
  cat("Processing", basename(folder))
  files <- untar(file.path(folder, "End.tar.gz"), list=TRUE)
  file <- max(grep("^plot-[0-9][0-9].par.rep$", files, value=TRUE))
  cat(" (", file, ") ... ", sep="")
  untar(file.path(folder, "End.tar.gz"), file)
  obj <- read.MFCLRep(file)
  file.remove(file)
  cat("done\n")
  obj
}

step16 <- read.MFCLRep(file.path("d:/Vincent_Matthew_Backup/YFT/2020",
                                 "assessment/ModelRuns/Hopeful",
                                 "Step16MaturityLength/plot-12.par.rep"))
stepwise <- c(penguin.runs[5:6], penguin.runs[1:3], Step16MaturityLength=step16,
              penguin.runs[4], Size60=diag20, Diag20=diag20)
saveRDS(stepwise, "stepwise.rds")


linesModel <- function(obj, lwd=2, col="black")
{
  lines(flr2taf(SBSBF0(obj)), lwd=lwd, col=col)
}

col <- c(rich.colors(9)[-1], "black")
plot(NA, xlim=c(1950, 2020), ylim = c(0,1), xlab="Year", ylab="SBSBF0")
abline(h=seq(0, 1, by=0.1), col="lightgray", lty=3)
mapply(linesModel, stepwise, col=col)

reverse <- function(selected.model.names, all.model.names=selected.model.names){
  palette.cols <- c("grey65","royalblue3","deepskyblue1","gold","orange1","indianred1","firebrick2","#AC2020")
  out <- colorRampPalette(palette.cols)(length(all.model.names)-1)
  out <- c(out,"black")[1:length(all.model.names)]
  names(out) <- all.model.names
  out <- out[selected.model.names]
  return(out)
}

pdf("pdf/replicate_fig14b_penguin.pdf")
plot.depletion(stepwise, palette.func=reverse) +
  scale_y_continuous(breaks = seq(0, 1, 0.1)) +
  theme(panel.grid.major.y=element_line(color="gray", size=0.5))  
dev.off()
