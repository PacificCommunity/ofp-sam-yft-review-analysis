flagDiffPlus <- function(par1, par2, flaglist)
{
  # Download flaglist if not supplied
  if(missing(flaglist))
  {
    flaglist <- read.csv(
      file.path("https://raw.githubusercontent.com/PacificCommunity",
                "ofp-sam-r4mfcl/master/inst/flaglist.csv"))
  }

  lookup <- function(flagtype, flag, flaglist)
  {
    flagtype <- as.integer(flagtype)
    flag <- as.integer(flag)
    if(flagtype == 1)
      flaglist[flag, "parest_flags"]
    else if(flagtype == 2)
      flaglist[flag, "age_flags"]
    else if(flagtype %in% -(1:999))
      flaglist[flag, "fish_flags"]
    else
      NA_character_
  }

  # Compare flags
  diffs <- flagDiff(par1, par2)
  rownames(diffs) <- NULL

  # Look up flag meaning
  diffs$meaning <- NA_character_
  for(i in seq_len(nrow(diffs)))
    diffs$meaning[i] <- lookup(diffs$flagtype[i], diffs$flag[i], flaglist)

  diffs
}
