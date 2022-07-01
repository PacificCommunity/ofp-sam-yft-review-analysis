path.hopeful <- "d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful"
path.selstep <- "d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep"
path.altdiags <- "d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/AltDiags"
path.diagnostic <- "z:/yft/2020/assessment/ModelRuns/Diagnostic"
path.destination <- "z:/yft/2020_review/analysis/stepwise"

## 09_IdxNoeff
file.copy(file.path(path.hopeful, "Step8NoEff"),
          path.destination, recursive=TRUE, copy.date=TRUE)
file.rename(file.path(path.destination, "Step14LW"),
            file.path(path.destination, "Step14LW_HopefulReport"))
## 10_SelUngroup
file.copy(file.path(path.hopeful, "Step9aaNoAge0Ungroup"),
          path.destination, recursive=TRUE, copy.date=TRUE)

## 11_JPTP
file.copy(file.path(path.selstep, "Step12JPTP"),
          path.destination, recursive=TRUE, copy.date=TRUE)

## 12_Age10LW_HopefulReport
file.copy(file.path(path.hopeful, "Step14LW"),
          path.destination, recursive=TRUE, copy.date=TRUE)
file.rename(file.path(path.destination, "Step14LW"),
            file.path(path.destination, "Step14LW_HopefulReport"))

## 12_Age10LW
file.copy(file.path(path.selstep, "Step14LW"),
          path.destination, recursive=TRUE, copy.date=TRUE)

## 13_CondAge
file.copy(file.path(path.selstep, "Step15CondAgeLen"),
          path.destination, recursive=TRUE, copy.date=TRUE)

## 14_MatLength
file.copy(file.path(path.selstep, "Step16MatLength"),
          path.destination, recursive=TRUE, copy.date=TRUE)

## 15_NoSpnFrac
file.copy(file.path(path.selstep, "Step17NoSpawnFrac"),
          path.destination, recursive=TRUE, copy.date=TRUE)

## 16_Size60
file.copy(file.path(path.altdiags, "CondVBSize60"),
          path.destination, recursive=TRUE, copy.date=TRUE)

## Remove subdirs
unlink(file.path(path.destination, "CondVBSize60/DiagnosticPlots"), recursive=TRUE)
unlink(file.path(path.destination, "CondVBSize60/Figures"), recursive=TRUE)
unlink(file.path(path.destination, "CondVBSize60/Hessian"), recursive=TRUE)
unlink(file.path(path.destination, "CondVBSize60/Impact"), recursive=TRUE)
unlink(file.path(path.destination, "CondVBSize60/JohnLProf"), recursive=TRUE)
unlink(file.path(path.destination, "CondVBSize60/Kobe"), recursive=TRUE)
unlink(file.path(path.destination, "CondVBSize60/SavePhase11NoMChange"), recursive=TRUE)
