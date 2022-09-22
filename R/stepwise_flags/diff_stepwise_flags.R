library(FLR4MFCL)

source("../shiny/stepwise-2020/R/find_biggest.R")
source("flagDiffPlus.R")

flaglist <- read.csv(
  file.path("https://raw.githubusercontent.com/PacificCommunity/ofp-sam-r4mfcl",
            "master/inst/flaglist.csv"))

stepwise <- "//penguin/assessments/yft/2020_review/analysis/stepwise"

parfile09 <- find_biggest_par(file.path(stepwise, "09_IdxNoeff"))
flags09 <- read.MFCLFlags(parfile09)

parfile10 <- find_biggest_par(file.path(stepwise, "10_SelUngroup"))
flags10 <- read.MFCLFlags(parfile10)

parfile11 <- find_biggest_par(file.path(stepwise, "11_JPTP"))
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

  parfiles <- sapply(models, find_biggest_par, quiet=TRUE)
  parobj <- sapply(parfiles, read.MFCLFlags)

  i <- 1
  flagDiffPlus(parobj[[i]], parobj[[i+1]], flaglist)
}
