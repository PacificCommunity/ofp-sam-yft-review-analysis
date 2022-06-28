library(FLR4MFCL)

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

condage.penguin <- read.plot.rep("z:/yft/2020/assessment/ModelRuns/Stepwise/Step15CondAgeLen")
condage.selstep <- read.plot.rep("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep/Step15CondAgeLen")
condage.hopeful <- read.plot.rep("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step15CondAgeLen")
