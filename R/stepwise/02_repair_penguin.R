library(TAF)

path.hopeful <- "d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful"
path.selstep <- "d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep"
path.altdiags <- "d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/AltDiags"
path.diagnostic <- "z:/yft/2020/assessment/ModelRuns/Diagnostic"
path.destination <- "z:/yft/2020_review/analysis/stepwise"

## 09_IdxNoeff
cp(file.path(path.hopeful, "Step8NoEff"), path.destination)
file.rename(file.path(path.destination, "Step8NoEff"), file.path(path.destination, "09_IdxNoeff"))

## 10_SelUngroup
cp(file.path(path.hopeful, "Step9aaNoAge0Ungroup"), path.destination)
file.rename(file.path(path.destination, "Step9aaNoAge0Ungroup"), file.path(path.destination, "10_SelUngroup"))

## 11_JPTP
cp(file.path(path.selstep, "Step12JPTP"), path.destination)
file.rename(file.path(path.destination, "Step12JPTP"), file.path(path.destination, "11_JPTP"))

## 12_Age10LW_HopefulReport
cp(file.path(path.hopeful, "Step14LW"), path.destination)
file.rename(file.path(path.destination, "Step14LW"), file.path(path.destination, "12_Age10LW_HopefulReport"))

## 12_Age10LW
cp(file.path(path.selstep, "Step14LW"), path.destination)
file.rename(file.path(path.destination, "Step14LW"), file.path(path.destination, "12_Age10LW"))

## 13_CondAge
cp(file.path(path.selstep, "Step15CondAgeLen"), path.destination)
file.rename(file.path(path.destination, "Step15CondAgeLen"), file.path(path.destination, "13_CondAge"))

## 14_MatLength
cp(file.path(path.selstep, "Step16MatLength"), path.destination)
file.rename(file.path(path.destination, "Step16MatLength"), file.path(path.destination, "14_MatLength"))

## 15_NoSpnFrac
cp(file.path(path.selstep, "Step17NoSpawnFrac"),path.destination)
file.rename(file.path(path.destination, "Step17NoSpawnFrac"), file.path(path.destination, "15_NoSpnFrac"))

## 16_Size60
# cp(file.path(path.altdiags, "CondVBSize60"), path.destination)
# file.rename(file.path(path.destination, "CondVBSize60"), file.path(path.destination, "16_Size60"))
dir.create(file.path(path.destination, "16_Size60"))
files <- dir(file.path(path.altdiags, "CondVBSize60"), full.names=TRUE)
files <- files[!dir.exists(files)]
cp(files, file.path(path.destination, "16_Size60"))

## 17_Diag20
dir.create(file.path(path.destination, "17_Diag20"))
files <- dir(path.diagnostic, full.names=TRUE)
files <- files[!dir.exists(files)]
cp(files, file.path(path.destination, "17_Diag20"))
