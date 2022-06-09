In ReportFigures.r, line 255, there is a call to `plot.depletion` plotting
models contained in `Step2Reps[2:3]` and `StepSelReps`, producing
StepDepAlt.png.

Without running the script, we can trace the source of the two model
collections:

* `Step2Reps[2:3]` was read from `Step2dirs`, which in turn was read from
  `Hopeful`. The `Hopeful` folder has steps 1 to 17.

* `StepSelReps` was read from `StepSelDirs`, which in turn was read from
  `SelStep`. The `SelStep` folder has steps 10 to 17.
