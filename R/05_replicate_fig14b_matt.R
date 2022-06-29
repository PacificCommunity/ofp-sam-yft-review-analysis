library(TAF)
library(FLR4MFCL)
library(gplots)
library(diags4MFCL)  # plot.depletion
library(ggplot2)

read.plot.rep <- function(folder)
{
  # folder contains End.tar.gz
  # this function reads the plot-*-par.rep that has the highest phase number
  if(!dir.exists(folder))
    stop("folder '", basename(folder), "' does not exist")
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

# read 2020 diagnostic model
Diag20 <- read.MFCLRep("z:/yft/2020/assessment/ModelRuns/Diagnostic/plot-14.par.rep")

path.hopeful <- "d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful"
path.selstep <- "d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep"

IdxNoEff <- read.plot.rep(file.path(path.hopeful, "Step8NoEff"))
SelUngroup <- read.MFCLRep(file.path(path.hopeful, "Step9aaNoAge0Ungroup/plot-12.par.rep"))
JPTP <- read.plot.rep(file.path(path.selstep, "Step12JPTP"))
Age10LW <- read.plot.rep(file.path(path.hopeful, "Step14LW"))
CondAge <- read.plot.rep(file.path(path.selstep, "Step15CondAgeLen"))
MatLength <- read.plot.rep(file.path(path.selstep, "Step16MatLength"))
NoSpnFrac <- read.plot.rep(file.path(path.selstep, "Step17NoSpawnFrac"))
Size60 <- Diag20

stepwise <- list(IdxNoEff=IdxNoEff,
                SelUngroup=SelUngroup,
                JPTP=JPTP,
                Age10LW=Age10LW,
                CondAge=CondAge,
                MatLength=MatLength,
                NoSpnFrac=NoSpnFrac,
                Size60=Size60,
                Diag20=Diag20)

saveRDS(stepwise, "stepwise_matt.rds")

reverse <- function(selected.model.names, all.model.names=selected.model.names){
  palette.cols <- c("grey65","royalblue3","deepskyblue1","gold","orange1","indianred1","firebrick2","#AC2020")
  out <- colorRampPalette(palette.cols)(length(all.model.names)-1)
  out <- c(out,"black")[1:length(all.model.names)]
  names(out) <- all.model.names
  out <- out[selected.model.names]
  return(out)
}

mkdir("pdf")
pdf("pdf/replicate_fig14b_matt.pdf")
plot.depletion(stepwise, palette.func=reverse) +
  scale_y_continuous(breaks = seq(0, 1, 0.1)) +
  theme(panel.grid.major.y=element_line(color="gray", size=0.5)) 
dev.off()
