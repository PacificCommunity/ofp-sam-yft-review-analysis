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
nz <- tapply(lf_size20$obs, lf_size20$fishery, max) > 0
fisheries <- as.integer(names(nz[nz]))
lf_size20 <- lf_size20[lf_size20$fishery %in% fisheries,]
lf_size60 <- lf_size60[lf_size60$fishery %in% fisheries,]
labels <- labels[fisheries]

# Plot
plot.overall.composition.fit(lf_size20, unique(lf_size20$fishery), labels) +
  ggtitle("Size20") + theme(plot.title=element_text(hjust=0.5))
plot.overall.composition.fit(lf_size60, unique(lf_size60$fishery), labels) +
  ggtitle("Size60") + theme(plot.title=element_text(hjust=0.5))

################################################################################

fisheries <- unique(lf_size20$fishery)
fishery_names <- labels

fishery_names_df <- data.frame(fishery=fisheries, fishery_names=fishery_names)
pdat_size20 <- merge(lf_size20, fishery_names_df)
pdat_size60 <- merge(lf_size60, fishery_names_df)
bar_width <- pdat_size20$length[2] - pdat_size20$length[1]

p <- ggplot(pdat_size20, aes(x=length))
p <- p + geom_bar(aes(y=obs), fill="gray", color="gray", stat="identity", width=bar_width)
p <- p + geom_line(aes(y=pred), data=pdat_size20, color="red", size=1)
p <- p + geom_line(aes(y=pred), data=pdat_size60, color="darkblue", size=1)
p <- p + facet_wrap(~fishery_names, scales="free")
p <- p + xlab("Length (cm)") + ylab("Count")
p <- p + ggtitle("Size20 (red)\n17_Size60 (blue)")
p <- p + theme_few()
p <- p + scale_y_continuous(expand=c(0, 0))
p <- p + theme(plot.title=element_text(hjust=0.5, margin=margin(t=20,b=10)))

dir.create("pdf", showWarnings=FALSE)
pdf("pdf/lf_size20_size60.pdf", width=9, height=9)
p
dev.off()
