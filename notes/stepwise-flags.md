# Stepwise flag changes

## Step 10: from 09_IdxNoeff to  10_SelUngroup

87 flags were changed, related to selectivity grouping, selectivity shape,
length sample size, and catchability deviations

Model setting           | Apply to                     | Before                                   | After
----------------------- | ---------------------------- | ---------------------------------------- | --------------------------
Selectivity grouping    | Fisheries 4, 9, 11, 12, 29   | Grouped                                  | Split into four groups
"                       | Fisheries 13, 15, 24, 25, 30 | Grouped                                  | Split into four groups
"                       | Fisheries 17, 23, 32         | Grouped                                  | Split into three groups
"                       | Fisheries 10, 27             | Ungrouped                                | Grouped
Selectivity shape       | Fishery 7                    | Non-decreasing with age                  | Can decrease with age
"                       | Fishery 28                   | Zero for all ages over 24 quarters       | Not constrained to be zero
Length sample size      | Fisheries 7, 8, 29           | Divisor = 20                             | Divisor = 40
Catchability deviations | Fisheries 1-41               | Constant for 24 months after each change | Can vary between quarters

## Step 11: from 10_SelUngroup to 11_JPTP

606 flags were changed, related to selectivity shape and adding tag groups

Model setting     | Apply to                                 | Before                      | After
----------------- | ---------------------------------------- | --------------------------- | ----------------------------------
Selectivity shape | Fisheries 1, 5, 6, 9, 10, 12, 27         | Can decrease with age       | Non-decreasing with age
"                 | Fisheries 17, 20, 21, 22, 23, 24, 28, 32 | Not constrained to be zero  | Zero for all ages over 25 quarters
"                 | Fisheries 2, 4, 5, 6, 7, 9, 11, 12, 29   | Not constrained to be zero  | Zero for ages 1-2 quarters

## Step 12: from 11_JPTP to 12_Age10LW

41 flags were changed, related to selectivity shape

Model setting     | Apply to        | Before                                 | After
----------------- | --------------- | -------------------------------------- | --------------------------------------
Selectivity shape | Fisheries 1-41  | Constant for all ages over 25 quarters | Constant for all ages over 37 quarters

## Step 13: from 12_Age10LW to 13_CondAge

196 flags were changed, related to growth curve estimation, initial population, fishing mortality, catch likelihood, and selectivity shape

Model setting           | Apply to                    | Before                                      | After
----------------------- | --------------------------- | ------------------------------------------- | --------------------------------------------
Growth curve estimation | Parameters                  | Not estimated, apart from variance          | Not estimated
"                       | Early ages                  | First 8 quarters are independent parameters | All ages follow growth curve
"                       | Penalty                     | No penalty wt for length estimation         | Penalty wt of 1 for length estimation
"                       | Age-length data             | Model fit to observed data not activated    | Model fit to observed data activated
Initial population      | Scaling pop                 | Estimated                                   | Disabled
Fishing mortality       | Maximum                     | 0.7                                         | 5.0
Catch likelihood        | Common wt                   | 100,000                                     | 10,000
"                       | Specific wt                 | 0                                           | 100,000
Selectivity shape       | Fisheries 17, 23-24, 28, 32 | Constant for all ages over 37 quarters      | Constant for all ages over 12 quarters
"                       | Fisheries 20-22             | Constant for all ages over 37 quarters      | Constant for all ages over 24 quarters
"                       | Fishery 6                   | Logistic shape                              | Cubic spline, or length-specific selectivity
"                       | Fishery 28                  | 4 spline nodes                              | 5 spline nodes

## Step 14: from 13_CondAge to 14_MatLength

1 flag was changed, related to maturity

Model setting | Apply to                    | Before        | After
------------- | --------------------------- | ------------- | -------------------------------
Maturity      | Convert mat @ length to age | Not converted | Converted using weighted spline

## Step 15: from 14_MatLength to 15_NoSpnFrac

No flags were changed in this step

## Step 16: from 15_NoSpnFrac to 16_Size60

83 flags were changed, related to length sample size and weight sample size

Model setting      | Apply to                                | Before       | After
------------------ | --------------------------------------- | ------------ | -------------
Length sample size | Fisheries 1-2, 4, 7-9, 11-12, 29, 33-41 | Divisor = 40 | Divisor = 120
Weight sample size | Fisheries 1-2, 4, 7-9, 11-12, 29, 33-41 | Divisor = 40 | Divisor = 120
Length sample size | Fisheries 3, 5-6, 10, 13-28, 30-32      | Divisor = 20 | Divisor = 60
Weight sample size | Fisheries 3, 5-6, 10, 13-28, 30-32      | Divisor = 20 | Divisor = 60

## Step 17: from 16_Size60 to 17_Diag20

12 flags were changed, related to selectivity shape

Model setting     | Apply to                                | Before                     | After                  | Flag
----------------- | --------------------------------------- | -------------------------- | ---------------------- | ------------
Selectivity shape | Fisheries 13-16, 19-22, 25-26, 30-31    | Not constrained to be zero | Zero for age 1 quarter | Fish flag 75
