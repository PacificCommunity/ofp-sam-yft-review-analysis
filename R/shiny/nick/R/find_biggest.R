find_biggest_par <- function(folder, pattern="^[0-9][0-9]\\.par$", full=TRUE)
{
  parfiles <- dir(folder, pattern=pattern, full=full)
  max(parfiles)
}

find_biggest_par <- function(folder, pattern="^plot-[0-9][0-9]\\.par.rep$",
                             full=TRUE)
{
  parfiles <- dir(folder, pattern=pattern, full=full)
  max(parfiles)
}
