file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step8NoEff",
          "z:/yft/2020/assessment/ModelRuns/Stepwise", recursive=TRUE, copy.date=TRUE)
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step9aaNoAge0Ungroup",
          "z:/yft/2020/assessment/ModelRuns/Stepwise", recursive=TRUE, copy.date=TRUE)
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep/Step12JPTP",
          "z:/yft/2020/assessment/ModelRuns/Stepwise", recursive=TRUE, copy.date=TRUE)
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/Hopeful/Step14LW",
          "z:/yft/2020/assessment/ModelRuns/Stepwise", recursive=TRUE, copy.date=TRUE)
file.rename("z:/yft/2020/assessment/ModelRuns/Stepwise/Step14LW",
            "z:/yft/2020/assessment/ModelRuns/Stepwise/Step14LW_HopefulReport")
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep/Step14LW",
          "z:/yft/2020/assessment/ModelRuns/Stepwise", recursive=TRUE, copy.date=TRUE)
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep/Step15CondAgeLen",
          "z:/yft/2020/assessment/ModelRuns/Stepwise", recursive=TRUE, copy.date=TRUE)
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep/Step16MatLength",
          "z:/yft/2020/assessment/ModelRuns/Stepwise", recursive=TRUE, copy.date=TRUE)
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/SelStep/Step17NoSpawnFrac",
          "z:/yft/2020/assessment/ModelRuns/Stepwise", recursive=TRUE, copy.date=TRUE)
file.copy("d:/Vincent_Matthew_Backup/YFT/2020/assessment/ModelRuns/AltDiags/CondVBSize60",
          "z:/yft/2020/assessment/ModelRuns/Stepwise", recursive=TRUE, copy.date=TRUE)

unlink("z:/yft/2020/assessment/ModelRuns/Stepwise/CondVBSize60/DiagnosticPlots", recursive=TRUE)
unlink("z:/yft/2020/assessment/ModelRuns/Stepwise/CondVBSize60/Figures", recursive=TRUE)
unlink("z:/yft/2020/assessment/ModelRuns/Stepwise/CondVBSize60/Hessian", recursive=TRUE)
unlink("z:/yft/2020/assessment/ModelRuns/Stepwise/CondVBSize60/Impact", recursive=TRUE)
unlink("z:/yft/2020/assessment/ModelRuns/Stepwise/CondVBSize60/JohnLProf", recursive=TRUE)
unlink("z:/yft/2020/assessment/ModelRuns/Stepwise/CondVBSize60/Kobe", recursive=TRUE)
unlink("z:/yft/2020/assessment/ModelRuns/Stepwise/CondVBSize60/SavePhase11NoMChange", recursive=TRUE)
