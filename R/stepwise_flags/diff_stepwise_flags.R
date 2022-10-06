library(FLR4MFCL)

source("flagDiffPlus.R")

flaglist <- read.csv(
  file.path("https://raw.githubusercontent.com/PacificCommunity/ofp-sam-r4mfcl",
            "master/inst/flaglist.csv"))

stepwise <- "//penguin/assessments/yft/2020_review/analysis/stepwise"
stepwise <- "c:/x/yft/stepwise"

parfile09 <- finalPar(file.path(stepwise, "09_IdxNoeff"))
flags09 <- read.MFCLFlags(parfile09)

parfile10 <- finalPar(file.path(stepwise, "10_SelUngroup"))
flags10 <- read.MFCLFlags(parfile10)

parfile11 <- finalPar(file.path(stepwise, "11_JPTP"))
flags11 <- read.MFCLFlags(parfile11)

diffs <- flagDiff(flags09, flags10)
rownames(diffs) <- NULL

flagDiffPlus(flags09, flags10)

################################################################################

folder <- "c:/x/yft/stepwise"

diffStepwise <- function(folder, flaglist)
{
  # Download flaglist if not supplied
  if(missing(flaglist))
  {
    flaglist <- read.csv(
      file.path("https://raw.githubusercontent.com/PacificCommunity",
                "ofp-sam-r4mfcl/master/inst/flaglist.csv"))
  }

  models <- dir(folder, full.names=TRUE)

  parfiles <- sapply(models, finalPar, quiet=TRUE)
  parobj <- sapply(parfiles, read.MFCLFlags)

  i <- 1
  flagDiffPlus(parobj[[i]], parobj[[i+1]], flaglist)
}
