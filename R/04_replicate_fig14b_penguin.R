library(TAF)
library(FLR4MFCL)
library(gplots)
library(diags4MFCL)  # plot.depletion
library(ggplot2)

# read 2020 diagnostic model
diag20 <- read.MFCLRep("z:/yft/2020/assessment/ModelRuns/Diagnostic/plot-14.par.rep")

path <- "z:/yft/2020/assessment/ModelRuns/Stepwise"

model <- dir(path)
model <- grep("Step(8|9|10|11|12|13|14|15|16|17)", model, value=TRUE)
model <- grep("Step16", model, invert=TRUE, value=TRUE)  # does not have End.tar.gz
model <- grep("Step9(a|b|c)", model, invert=TRUE, value=TRUE)  # keep Step9SelChange
model <- grep("Step(10|11)", model, invert=TRUE, value=TRUE)  # remove ForceMix, Mix2
model <- grep("Step(13)", model, invert=TRUE, value=TRUE)  # step 14 includes Age10
model <- file.path(path, model)

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

# obj <- read.plot.rep(model[1])
penguin.runs <- lapply(model, read.plot.rep)
names(penguin.runs) <- basename(model)
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
