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
jptp.selstep <- read.plot.rep("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep/Step12JPTP")
jptp.hopeful <- read.plot.rep("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step12JPTP")

selung9aa.hopeful <- read.MFCLRep("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step9aaNoAge0Ungroup/plot-12.par.rep")
selung9a.hopeful <- read.plot.rep("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step9aUngroupSel")
selung9b.hopeful <- read.plot.rep("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step9bUngroupAsym")
selung9c.hopeful <- read.plot.rep("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step9cUngroupAsymAge2")
selung9.hopeful <- read.plot.rep("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step9SelChange")
idxnoeff.hopeful <-  read.plot.rep("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step8NoEff")

age10lw.selstep <- read.plot.rep("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep/Step14LW")
age10lw.hopeful <- read.plot.rep("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step14LW")
age10lw.penguin <- read.plot.rep("z:/yft/2020/assessment/ModelRuns/Stepwise/Step14LW")
matlen.selstep <- read.plot.rep("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep/Step16MatLength")
matlen.hopeful <- read.MFCLRep("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step16MaturityLength/plot-12.par.rep")
# matlen.penguin <- read.plot.rep("z:/yft/2020/assessment/ModelRuns/Stepwise/Step16MaturityLength")  # empty on penguin!!

SBSBF0(condage.hopeful) # Perhaps Matt placed this on penguin - or a variant of this "hopeful" path?
SBSBF0(condage.selstep) # We think this may match the report
SBSBF0(jptp.selstep) #
SBSBF0(jptp.hopeful) #
SBSBF0(selung9aa.hopeful) #
SBSBF0(selung9a.hopeful) #
SBSBF0(selung9b.hopeful) #
SBSBF0(selung9c.hopeful) #
SBSBF0(selung9.hopeful) #
SBSBF0(idxnoeff.hopeful) #
SBSBF0(age10lw.selstep) #
SBSBF0(age10lw.hopeful) #
SBSBF0(age10lw.penguin) #
SBSBF0(matlen.selstep) #
SBSBF0(matlen.hopeful) #
