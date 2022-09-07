# Stepwise Model Runs from 2020

The changes introduced in the 2020 assessment that had the greatest effect on
depletion were:

### 1 Selectivity (**SelUngroup**)

- Separation of selectivity patterns among regions.

- Assigning non-decreasing penalty to one fishery per region.

### 2 Tags (**JPTP**)

- Forcing the mixing period of the tag recaptures to be 182 days for each tag
  release had the largest effect on this combined step.

- Inclusion of tags without recapture locations in the purse seine fisheries.

- Addition of the Japanese tagging program data.

### 3 Maximum age (**Age10LW**)

- Increasing the maximum age in the model from 7 years to 10 years.

- Updating *a* and *b* with a new batch of length-weight data, particularly fish
  of small sizes. [check with Simon]

### 4 Growth (**CondAge**)

- Addition of otolith data through conditional age-at-length.

- Removal of deviates from the von Bertalanffy curve for the first 8 age
  classes. In earlier steps, the mean lengths of the first 8 age classes were
  estimated independently from length frequencies.

- Default value for maximum F in the catch equations was changed from 0.7 to 5.0
  [phase 1]l

- 4 nodes for cubic spline for fishery 28 [phase 1].
