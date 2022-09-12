library(diags4MFCL)
library(ggplot2)
library(ggthemes)

diag_folder <- "z:/yft/2020/assessment/ModelRuns/Diagnostic"
grid_folder <- "z:/yft/2020/assessment/ModelRuns/Grid"
size20_folder <- file.path(grid_folder, "CondLen_M0.2_Size20_H0.8_Mix2")
size60_folder <- file.path(grid_folder, "CondLen_M0.2_Size60_H0.8_Mix2")

# Read length fits
lf_size20 <- length.fit.preparation(file.path(size20_folder, "length.fit"))
lf_size60 <- length.fit.preparation(file.path(size60_folder, "length.fit"))

# Read labels
labels <- readLines(file.path(diag_folder, "labels.tmp"))
# Exclude labels without initial number, then remove number
labels <- grep("^[0-9]", labels, value=TRUE)
labels <- gsub("^[0-9]*\\. ", "", labels)
# Modify labels to match assessment report
labels <- gsub("MISC", "Dom", labels)
labels <- gsub("PHID", "IDPH", labels)
labels <- gsub("ASS", "ASSOC", labels)
labels <- gsub("UNA", "UNASSOC", labels)
labels <- gsub("UNS", "UNASSOC", labels)

# Exclude fisheries that have no length comp data
nz <- tapply(lf_diag$obs, lf_diag$fishery, max) > 0
fisheries <- as.integer(names(nz[nz]))
lf_diag <- lf_diag[lf_diag$fishery %in% fisheries,]
labels <- labels[fisheries]

# Plot
plot.overall.composition.fit(lf_diag, unique(lf_diag$fishery), labels) +
  ggtitle("17_Diag20") + theme(plot.title=element_text(hjust=0.5))

################################################################################

# Read length fit
folder_idxnoeff <- "z:/yft/2020_review/analysis/stepwise/09_IdxNoeff"
lf_idxnoeff <- length.fit.preparation(file.path(folder_idxnoeff, "length.fit"))

# Exclude fisheries that have no length comp data
lf_idxnoeff <- lf_idxnoeff[lf_idxnoeff$fishery %in% fisheries,]

# Plot
plot.overall.composition.fit(lf_idxnoeff, unique(lf_idxnoeff$fishery), labels) +
  ggtitle("09_IdxNoeff") + theme(plot.title=element_text(hjust=0.5))

################################################################################

fisheries <- unique(lf_diag$fishery)
fishery_names <- labels

fishery_names_df <- data.frame(fishery=fisheries, fishery_names=fishery_names)
pdat_diag <- merge(lf_diag, fishery_names_df)
pdat_idxnoeff <- merge(lf_idxnoeff, fishery_names_df)
bar_width <- pdat_diag$length[2] - pdat_diag$length[1]

p <- ggplot(pdat_diag, aes(x=length))
p <- p + geom_bar(aes(y=obs), fill="gray", color="gray", stat="identity", width=bar_width)
p <- p + geom_line(aes(y=pred), data=pdat_diag, color="red", size=1)
p <- p + geom_line(aes(y=pred), data=pdat_idxnoeff, color="darkblue", size=1)
p <- p + facet_wrap(~fishery_names, scales="free")
p <- p + xlab("Length (cm)") + ylab("Count")
p <- p + ggtitle("09_IdxNoeff (blue)\n17_Diag20 (red)")
p <- p + theme_few()
p <- p + scale_y_continuous(expand=c(0, 0))
p <- p + theme(plot.title=element_text(hjust=0.5, margin=margin(t=20,b=10)))

dir.create("pdf", showWarnings=FALSE)
pdf("pdf/lf_idxnoeff_diag.pdf", width=9, height=9)
p
dev.off()
