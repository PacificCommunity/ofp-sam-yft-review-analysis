file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step8NoEff",
          "Z:/yft/2020/assessment/ModelRuns/Stepwise",
          recursive = TRUE,
          copy.date = TRUE)  
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step9aaNoAge0Ungroup",
          "Z:/yft/2020/assessment/ModelRuns/Stepwise",
          recursive = TRUE,
          copy.date = TRUE)
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep/Step12JPTP",
          "Z:/yft/2020/assessment/ModelRuns/Stepwise",
          recursive = TRUE,
          copy.date = TRUE)
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step14LW",
          "Z:/yft/2020/assessment/ModelRuns/Stepwise",
          recursive = TRUE,
          copy.date = TRUE)
file.rename("Z:/yft/2020/assessment/ModelRuns/Stepwise/Step14LW",
          "Z:/yft/2020/assessment/ModelRuns/Stepwise/Step14LW_HopefulReport")
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep/Step14LW",
          "Z:/yft/2020/assessment/ModelRuns/Stepwise",
          recursive = TRUE,
          copy.date = TRUE)
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep/Step15CondAgeLen",
          "Z:/yft/2020/assessment/ModelRuns/Stepwise",
          recursive = TRUE,
          copy.date = TRUE)
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep/Step16MatLength",
          "Z:/yft/2020/assessment/ModelRuns/Stepwise",
          recursive = TRUE,
          copy.date = TRUE)
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep/Step17NoSpawnFrac",
          "Z:/yft/2020/assessment/ModelRuns/Stepwise",
          recursive = TRUE,
          copy.date = TRUE)
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/AltDiags/CondVBSize60",
          "Z:/yft/2020/assessment/ModelRuns/Stepwise",
          recursive = TRUE,
          copy.date = TRUE)

# file.remove("Z:/yft/2020/assessment/ModelRuns/Stepwise/CondVBSize60/DiagnosticPlots") # Permission denied!
unlink("Z:/yft/2020/assessment/ModelRuns/Stepwise/CondVBSize60/DiagnosticPlots", recursive=TRUE)
unlink("Z:/yft/2020/assessment/ModelRuns/Stepwise/CondVBSize60/Figures", recursive=TRUE)
unlink("Z:/yft/2020/assessment/ModelRuns/Stepwise/CondVBSize60/Hessian", recursive=TRUE)
unlink("Z:/yft/2020/assessment/ModelRuns/Stepwise/CondVBSize60/Impact", recursive=TRUE)
unlink("Z:/yft/2020/assessment/ModelRuns/Stepwise/CondVBSize60/JohnLProf", recursive=TRUE)
unlink("Z:/yft/2020/assessment/ModelRuns/Stepwise/CondVBSize60/Kobe", recursive=TRUE)
unlink("Z:/yft/2020/assessment/ModelRuns/Stepwise/CondVBSize60/SavePhase11NoMChange", recursive=TRUE)
