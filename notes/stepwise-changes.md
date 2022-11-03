# Stepwise Model Runs from 2020

The changes introduced in the 2020 assessment that had the greatest effect on
depletion were:

### 1 Selectivity (**SelUngroup**)

**Flags**

- Separation of selectivity patterns among regions.

- Assigning non-decreasing penalty to one fishery per region.

**Data**

(No changes to data.)

### 2 Tags (**JPTP**)

**Flags**

- Forcing the mixing period of the tag recaptures to be 182 days for each tag
  release had the largest effect on this combined step.

- Inclusion of tags without recapture locations in the purse seine fisheries.

- Addition of the Japanese tagging program data.

**Tag file**

- Tag release groups are increased from 87 to 145 because JPTP program tags were
  added.

- There are more recaptures for RTTP and PTTP programs. This is a change in the
  2020 assessment, including tags without recapture locations in the purse seine
  fisheries, as well as tags added after revising the tagger effect analysis.

- Number of effective releases are higher for some length bins in all programs.
  This may be a change to usability correction for having additional recaptures.

**Ini file**

- With more release groups, the ini file has more lines to assign reporting
  rates, priors, and penalties for those additional release groups.

**Frq file**

- Number of release groups was updated.

### 3 Maximum age (**Age10LW**)

Note: a wrong version of Age10LW exists in several places, where fish flag 75 =
1 is applied to set the selectivity of the youngest age to zero but that change
should not occur until in Diag20, as reflected in other stepwise model runs and
in the assessment report. The correct version of the Age10LW model run is on
Penguin at `z:/yft/2020_review/analysis/stepwise/12_Age10LW` and can be
identified from SBSBF0 = 0.46613 in the final year, not 0.51833.

**Flags**

- Increasing the maximum age in the model from 7 years to 10 years.

- Updating *a* and *b* with a new batch of length-weight data, particularly fish
  of small sizes. [check with Simon]

**Ini file**

- Number of age classes increased from 28 to 40.

- Maturity-at-age updated for all age classes and extended for the increased
  number of age classes.

- Natural mortality is slightly decreased from 0.25 to 0.23.

- Age parameters updated for all age classes and extended for the increased
  number of age classes.

- Length-weight parameters updated.

### 4 Growth (**CondAge**)

**Flags**

- Addition of otolith data through conditional age-at-length.

- Removal of deviates from the von Bertalanffy curve for the first 8 age
  classes. In earlier steps, the mean lengths of the first 8 age classes were
  estimated independently from length frequencies.

- Default value for maximum F in the catch equations was changed from 0.7 to 5.0
  [phase 1]l

- 4 nodes for cubic spline for fishery 28 [phase 1].

**Ini file**

- Updated maturity-at-age.

- Natural mortality updated

- Age parameters updated.

- Length-weight parameters updated.

### 5 Final (**Diag20**)

**Flags**

(We have not yet compared the flag settings of Diag20 to previous stepwise model
settings.)

**Ini file**

- Version number change.

- Reporting rate grouping flags changed.

- Maturity-at-age updated for all age classes and extended for the increased
  number of age classes.

- Natural mortality is slightly decreased from 0.25 to 0.23.

- Age parameters updated for all age classes and extended for the increased
  number of age classes.

- VB parameters updated.

- Length-weight parameters updated.
