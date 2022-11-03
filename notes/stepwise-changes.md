# Stepwise Changes in the 2020 Assessment Model Development

## 09_IdxNoeff ... 10_SelUngroup

### Flags

87 flags were changed, related to selectivity grouping, selectivity shape,
length sample size, and catchability deviations

Model setting           | Applies to                   | Before                                   | After                      | Flag
----------------------- | ---------------------------- | ---------------------------------------- | -------------------------- | ------------
Selectivity grouping    | Fisheries 4, 9, 11, 12, 29   | Grouped                                  | Split into four groups     | Fish flag 24
"                       | Fisheries 13, 15, 24, 25, 30 | Grouped                                  | Split into four groups     | Fish flag 24
"                       | Fisheries 17, 23, 32         | Grouped                                  | Split into three groups    | Fish flag 24
"                       | Fisheries 10, 27             | Ungrouped                                | Grouped                    | Fish flag 24
Selectivity shape       | Fishery 7                    | Non-decreasing with age                  | Can decrease with age      | Fish flag 16
"                       | Fishery 28                   | Zero for all ages over 24 quarters       | Not constrained to be zero | Fish flag 16
Length sample size      | Fisheries 7, 8, 29           | Divisor = 20                             | Divisor = 40               | Fish flag 49
Catchability deviations | Fisheries 1-41               | Constant for 24 months after each change | Can vary between quarters  | Fish flag 23

### Data

(No changes to data.)

## 10_SelUngroup ... 11_JPTP

### Flags

606 flags were changed, related to selectivity shape and adding tag groups

Model setting     | Applies to                               | Before                      | After                              | Flag
----------------- | ---------------------------------------- | --------------------------- | ---------------------------------- | ------------
Selectivity shape | Fisheries 1, 5, 6, 9, 10, 12, 27         | Can decrease with age       | Non-decreasing with age            | Fish flag 16
"                 | Fisheries 17, 20, 21, 22, 23, 24, 28, 32 | Not constrained to be zero  | Zero for all ages over 25 quarters | Fish flag 16
"                 | Fisheries 2, 4, 5, 6, 7, 9, 11, 12, 29   | Not constrained to be zero  | Zero for ages 1-2 quarters         | Fish flag 75

### Tag file

- Define mixing period of the tag recaptures to be 182 days for each tag
  release.

- Tag release groups are increased from 87 to 145 because JPTP program tags were
  added.

- There are more recaptures for RTTP and PTTP programs. This is a change in the
  2020 assessment, including tags without recapture locations in the purse seine
  fisheries, as well as tags added after revising the tagger effect analysis.

- Number of effective releases are higher for some length bins in all programs.
  This may be a change to usability correction for having additional recaptures.

### Ini file

- With more release groups, the ini file has more lines to assign reporting
  rates, priors, and penalties for those additional release groups.

### Frq file

- Number of release groups was updated.

## 11_JPTP ... 12_Age10LW

### Flags

41 flags were changed, related to selectivity shape

Model setting     | Applies to      | Before                                 | After                                  | Flag
----------------- | --------------- | -------------------------------------- | -------------------------------------- | -----------
Selectivity shape | Fisheries 1-41  | Constant for all ages over 25 quarters | Constant for all ages over 37 quarters | Fish flag 3

### Ini file

- Number of age classes increased from 28 to 40 quarters.

- Maturity-at-age updated for all age classes and extended for the increased
  number of age classes.

- Natural mortality is slightly decreased from 0.25 to 0.23.

- Age parameters updated for all age classes and extended for the increased
  number of age classes.

- Length-weight parameters updated.

## 12_Age10LW ... 13_CondAge

### Flags

196 flags were changed, related to growth curve estimation, initial population, fishing mortality, catch likelihood, and selectivity shape

Model setting           | Applies to                  | Before                                      | After                                        | Flag
----------------------- | --------------------------- | ------------------------------------------- | -------------------------------------------- | ---------------
Growth curve estimation | Parameters                  | Not estimated, apart from variance          | Not estimated                                | Parest flag 32
"                       | Early ages                  | First 8 quarters are independent parameters | All ages follow growth curve                 | Parest flag 173
"                       | Penalty                     | No penalty wt for length estimation         | Penalty wt of 1 for length estimation        | Parest flag 182
"                       | Age-length data             | Model fit to observed data not activated    | Model fit to observed data activated         | Parest flag 240
Initial population      | Scaling pop                 | Estimated                                   | Disabled                                     | Age flag 113
Fishing mortality       | Max F                       | 0.7                                         | 5.0                                          | Age flag 116
Catch likelihood        | Common wt                   | 100,000                                     | 10,000                                       | Age flag 144
"                       | Specific wt                 | 0                                           | 100,000                                      | Fish flag 45
Selectivity shape       | Fisheries 17, 23-24, 28, 32 | Constant for all ages over 37 quarters      | Constant for all ages over 12 quarters       | Fish flag 3
"                       | Fisheries 20-22             | Constant for all ages over 37 quarters      | Constant for all ages over 24 quarters       | Fish flag 3
"                       | Fishery 6                   | Logistic shape                              | Cubic spline, or length-specific selectivity | Fish flag 57
"                       | Fishery 28                  | 4 spline nodes                              | 5 spline nodes                               | Fish flag 61

### Age-length file

- Addition of otolith data through conditional age-at-length.

### Ini file

- Updated maturity-at-age.

- Natural mortality updated.

- Age parameters updated.

- Length-weight parameters updated.

## 13_CondAge ... 14_MatLength

### Flags

1 flag was changed, related to maturity

Model setting | Applies to                  | Before        | After                           | Flag
------------- | --------------------------- | ------------- | ------------------------------- | ------------
Maturity      | Convert mat @ length to age | Not converted | Converted using weighted spline | Age flag 188

### Data

(No changes to data.)

## 14_MatLength ... 15_NoSpnFrac

### Flags

(No flags were changed in this step.)

### Ini file

- Updated maturity at length.

## 15_NoSpnFrac ... 16_Size60

### Flags

83 flags were changed, related to length sample size and weight sample size

Model setting      | Applies to                              | Before       | After         | Flag
------------------ | --------------------------------------- | ------------ | ------------- | ------------
Length sample size | Fisheries 1-2, 4, 7-9, 11-12, 29, 33-41 | Divisor = 40 | Divisor = 120 | Fish flag 49
Weight sample size | Fisheries 1-2, 4, 7-9, 11-12, 29, 33-41 | Divisor = 40 | Divisor = 120 | Fish flag 50
Length sample size | Fisheries 3, 5-6, 10, 13-28, 30-32      | Divisor = 20 | Divisor = 60  | Fish flag 49
Weight sample size | Fisheries 3, 5-6, 10, 13-28, 30-32      | Divisor = 20 | Divisor = 60  | Fish flag 50

### Ini file

- Updated tag reporting group flags.

- Updated maturity at age and maturity and length.

- Updated von Bertalanffy parameters.

## 16_Size60 ... 17_Diag20

### Flags

12 flags were changed, related to selectivity shape

Model setting     | Applies to                           | Before                     | After                  | Flag
----------------- | ------------------------------------ | -------------------------- | ---------------------- | ------------
Selectivity shape | Fisheries 13-16, 19-22, 25-26, 30-31 | Not constrained to be zero | Zero for age 1 quarter | Fish flag 75

### Data

(No changes to data.)
