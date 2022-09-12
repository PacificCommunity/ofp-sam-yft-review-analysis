find_biggest_par <- function(folder, pattern="^[0-9][0-9]\\.par$", full=TRUE,
                             quiet=FALSE)
{
  parfiles <- dir(folder, pattern=pattern, full=full)
  if(!quiet)
    print(basename(parfiles))
  max(parfiles)
}

find_biggest_rep <- function(folder, pattern="^plot-[0-9][0-9]\\.par.rep$",
                             full=TRUE, quiet=FALSE)
{
  parfiles <- dir(folder, pattern=pattern, full=full)
  if(!quiet)
    print(basename(parfiles))
  max(parfiles)
}
