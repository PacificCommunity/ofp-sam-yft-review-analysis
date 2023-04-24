library(FLR4MFCL)

dir.create("png", showWarnings=FALSE)

geomean <- function(x) exp(mean(log(x)))

folder <- "//penguin/assessments/yft/2020_review/analysis/review_runs/arni_john"

rep.diag <- read.MFCLRep(file.path(folder, "ZZ_Diag20/plot-14.par.rep"))
rep.mest <- read.MFCLRep(file.path(folder, "Y_Diag2020-Mest/plot-14.par.rep"))

png("png/natmort.png", 1800, 1800, res=300)
plot(NA, xlim=c(0,41), ylim=c(0,0.55),
     xaxs="i", yaxs="i", xlab="Age (qtr)", ylab="Natural Mortality", las=1)
abline(h=seq(0.1,0.5,0.1), col="lightgray")
lines(m_at_age(rep.diag), lwd=2)
# lines(m_at_age(rep.mest), lwd=2, col="red")
dev.off()

geomean(m_at_age(rep.diag))  # 0.232
geomean(m_at_age(rep.mest))  # 0.202

M_vector <- data.frame(Age=1:40,
                       Diag=m_at_age(rep.diag), Mest=m_at_age(rep.mest))
write.csv(M_vector, "M_vector.csv", row.names=FALSE, quote=FALSE)

################################################################################

par.diag <- read.MFCLPar(file.path(folder, "ZZ_Diag20/14.par"))
par.mest <- read.MFCLPar(file.path(folder, "Y_Diag2020-Mest/14.par"))

m(par.diag)  # 0.232
m(par.mest)  # 0.202

M_coefficient <- data.frame(Diag=m(par.diag), Mest=m(par.mest))
write.csv(M_coefficient, "M_coefficient.csv", row.names=FALSE, quote=FALSE)

################################################################################

f <- flags(par.mest)
f[f$flagtype==2 & f$flag %in% c(5, 33, 73, 77:80, 82:84, 109, 121, 130:133), ]

flagDiff(par.diag, par.mest)
