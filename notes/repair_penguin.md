We want a stepwise folder on Penguin that contains the stepwise model runs
producing the stepwise plot from the report.

The second stepwise plot (Fig. 14b) in the report has 9 model runs. We will copy
those 9 model runs to Penguin:

Model run      | Origin
-------------- | ----------------------------
IdxNoEff       | Hopeful/Step8NoEff
SelUngroup     | Hopeful/Step9aaNoAge0Ungroup
JPTP           | SelStep/Step12JPTP
Age10LW_Report | Hopeful/Step14LW
Age10LW        | SelStep/Step14LW
CondAge        | SelStep/Step15CondAgeLen
MatLength      | SelStep/Step16MatLength
NoSpnFrac      | SelStep/Step17NoSpawnFrac
Size60         | SelTestsDiag/NoAge1Fix0
Diag20         | diagnostic

Age10LW (Age10LW_Report) in the report appears to come from Hopeful. We think Age10LW should come from SelStep instead. Both versions are now copied to Penguin. 
