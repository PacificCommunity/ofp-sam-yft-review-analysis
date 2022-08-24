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

reverse <- function(selected.model.names, all.model.names=selected.model.names){
  palette.cols <- c("grey65","royalblue3","deepskyblue1","gold","orange1","indianred1","firebrick2","#AC2020")
  out <- colorRampPalette(palette.cols)(length(all.model.names)-1)
  out <- c(out,"black")[1:length(all.model.names)]
  names(out) <- all.model.names
  out <- out[selected.model.names]
  return(out)
}
