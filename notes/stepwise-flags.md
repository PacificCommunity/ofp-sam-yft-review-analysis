# Stepwise flag changes

## Step 10: from 09_IdxNoeff to  10_SelUngroup

87 flags were changed, related to selectivity grouping, selectivity shape,
length sample size, and catchability deviations

**Selectivity grouping**

Model setting              | Apply to                     | Before    | After
-------------------------- | ---------------------------- | --------- | ----------------------
Selectivity grouping       | Fisheries 4, 9, 11, 12, 29   | Grouped   | Split into four groups
                           | Fisheries 13, 15, 24, 25, 30 | Grouped   | Split into four groups
                           | Fisheries 17, 23, 32         | Grouped   | Split into three groups
                           | Fisheries 10, 27             | Ungrouped | Grouped

**Selectivity shape**

Fishery 7 used to have selectivity set as non-decreasing with age, now allowed
to decrease with age

Fishery 28 used to have selectivity set as zero for all ages over 24 quarters,
now no longer constrained to be zero

**Length sample size**

Fisheries 7, 8, and 29 used to have a length sample size divisor of 20, now 40

**Catchability deviations**

Fisheries 1-41: allow catchability deviations to vary between quarters, rather
than keeping them constant for 23+1 months after each change

## Step 11: from 10_SelUngroup to 11_JPTP

606 flags were changed, related to selectivity shape and tags

**Selectivity shape**

Fisheries 1, 5, 6, 9, 10, 12, 27

Fisheries 17, 20, 21, 22, 23, 24, 28, 32


flagtype flag  par1  par2                                         meaning
      -1   16     0     1                       selectivity shape [4.5.6]
      -5   16     0     1                       selectivity shape [4.5.6]
      -6   16     0     1                       selectivity shape [4.5.6]
      -9   16     0     1                       selectivity shape [4.5.6]
     -10   16     0     1                       selectivity shape [4.5.6]
     -12   16     0     1                       selectivity shape [4.5.6]
     -27   16     0     1                       selectivity shape [4.5.6]

     -17   16     0     2                       selectivity shape [4.5.6]
     -20   16     0     2                       selectivity shape [4.5.6]
     -21   16     0     2                       selectivity shape [4.5.6]
     -22   16     0     2                       selectivity shape [4.5.6]
     -23   16     0     2                       selectivity shape [4.5.6]
     -24   16     0     2                       selectivity shape [4.5.6]
     -28   16     0     2                       selectivity shape [4.5.6]
     -32   16     0     2                       selectivity shape [4.5.6]

      -2   75     0     2 age classes for zero selectivity-at-age [4.5.6]
      -4   75     0     2 age classes for zero selectivity-at-age [4.5.6]
      -5   75     0     2 age classes for zero selectivity-at-age [4.5.6]
      -6   75     0     2 age classes for zero selectivity-at-age [4.5.6]
      -7   75     0     2 age classes for zero selectivity-at-age [4.5.6]
      -9   75     0     2 age classes for zero selectivity-at-age [4.5.6]
     -11   75     0     2 age classes for zero selectivity-at-age [4.5.6]
     -12   75     0     2 age classes for zero selectivity-at-age [4.5.6]
     -29   75     0     2 age classes for zero selectivity-at-age [4.5.6]



  -10087    1    NA     2
  -10087    2    NA     0
  -10087    3    NA     0
  -10087    4    NA     0
  -10087    5    NA     0
  -10087    6    NA     0
  -10087    7    NA     0
  -10087    8    NA     0
  -10087    9    NA     0
  -10087   10    NA     0
  -10088    1    NA     2
  -10088    2    NA     0
  -10088    3    NA     0
  -10088    4    NA     0
  -10088    5    NA     0
  -10088    6    NA     0
  -10088    7    NA     0
  -10088    8    NA     0
  -10088    9    NA     0
  -10088   10    NA     0
  -10089    1    NA     2
  -10089    2    NA     0
  -10089    3    NA     0
  -10089    4    NA     0
  -10089    5    NA     0
  -10089    6    NA     0
  -10089    7    NA     0
  -10089    8    NA     0
  -10089    9    NA     0
  -10089   10    NA     0
  -10090    1    NA     2
  -10090    2    NA     0
  -10090    3    NA     0
  -10090    4    NA     0
  -10090    5    NA     0
  -10090    6    NA     0
  -10090    7    NA     0
  -10090    8    NA     0
  -10090    9    NA     0
  -10090   10    NA     0
  -10091    1    NA     2
  -10091    2    NA     0
  -10091    3    NA     0
  -10091    4    NA     0
  -10091    5    NA     0
  -10091    6    NA     0
  -10091    7    NA     0
  -10091    8    NA     0
  -10091    9    NA     0
  -10091   10    NA     0
  -10092    1    NA     2
  -10092    2    NA     0
  -10092    3    NA     0
  -10092    4    NA     0
  -10092    5    NA     0
  -10092    6    NA     0
  -10092    7    NA     0
  -10092    8    NA     0
  -10092    9    NA     0
  -10092   10    NA     0
  -10093    1    NA     2
  -10093    2    NA     0
  -10093    3    NA     0
  -10093    4    NA     0
  -10093    5    NA     0
  -10093    6    NA     0
  -10093    7    NA     0
  -10093    8    NA     0
  -10093    9    NA     0
  -10093   10    NA     0
  -10094    1    NA     2
  -10094    2    NA     0
  -10094    3    NA     0
  -10094    4    NA     0
  -10094    5    NA     0
  -10094    6    NA     0
  -10094    7    NA     0
  -10094    8    NA     0
  -10094    9    NA     0
  -10094   10    NA     0
  -10095    1    NA     2
  -10095    2    NA     0
  -10095    3    NA     0
  -10095    4    NA     0
  -10095    5    NA     0
  -10095    6    NA     0
  -10095    7    NA     0
  -10095    8    NA     0
  -10095    9    NA     0
  -10095   10    NA     0
  -10096    1    NA     2
  -10096    2    NA     0
  -10096    3    NA     0
  -10096    4    NA     0
  -10096    5    NA     0
  -10096    6    NA     0
  -10096    7    NA     0
  -10096    8    NA     0
  -10096    9    NA     0
  -10096   10    NA     0
  -10097    1    NA     2
  -10097    2    NA     0
  -10097    3    NA     0
  -10097    4    NA     0
  -10097    5    NA     0
  -10097    6    NA     0
  -10097    7    NA     0
  -10097    8    NA     0
  -10097    9    NA     0
  -10097   10    NA     0
  -10098    1    NA     2
  -10098    2    NA     0
  -10098    3    NA     0
  -10098    4    NA     0
  -10098    5    NA     0
  -10098    6    NA     0
  -10098    7    NA     0
  -10098    8    NA     0
  -10098    9    NA     0
  -10098   10    NA     0
  -10099    1    NA     2
  -10099    2    NA     0
  -10099    3    NA     0
  -10099    4    NA     0
  -10099    5    NA     0
  -10099    6    NA     0
  -10099    7    NA     0
  -10099    8    NA     0
  -10099    9    NA     0
  -10099   10    NA     0
  -10100    1    NA     2
  -10100    2    NA     0
  -10100    3    NA     0
  -10100    4    NA     0
  -10100    5    NA     0
  -10100    6    NA     0
  -10100    7    NA     0
  -10100    8    NA     0
  -10100    9    NA     0
  -10100   10    NA     0
  -10101    1    NA     2
  -10101    2    NA     0
  -10101    3    NA     0
  -10101    4    NA     0
  -10101    5    NA     0
  -10101    6    NA     0
  -10101    7    NA     0
  -10101    8    NA     0
  -10101    9    NA     0
  -10101   10    NA     0
  -10102    1    NA     2
  -10102    2    NA     0
  -10102    3    NA     0
  -10102    4    NA     0
  -10102    5    NA     0
  -10102    6    NA     0
  -10102    7    NA     0
  -10102    8    NA     0
  -10102    9    NA     0
  -10102   10    NA     0
  -10103    1    NA     2
  -10103    2    NA     0
  -10103    3    NA     0
  -10103    4    NA     0
  -10103    5    NA     0
  -10103    6    NA     0
  -10103    7    NA     0
  -10103    8    NA     0
  -10103    9    NA     0
  -10103   10    NA     0
  -10104    1    NA     2
  -10104    2    NA     0
  -10104    3    NA     0
  -10104    4    NA     0
  -10104    5    NA     0
  -10104    6    NA     0
  -10104    7    NA     0
  -10104    8    NA     0
  -10104    9    NA     0
  -10104   10    NA     0
  -10105    1    NA     2
  -10105    2    NA     0
  -10105    3    NA     0
  -10105    4    NA     0
  -10105    5    NA     0
  -10105    6    NA     0
  -10105    7    NA     0
  -10105    8    NA     0
  -10105    9    NA     0
  -10105   10    NA     0
  -10106    1    NA     2
  -10106    2    NA     0
  -10106    3    NA     0
  -10106    4    NA     0
  -10106    5    NA     0
  -10106    6    NA     0
  -10106    7    NA     0
  -10106    8    NA     0
  -10106    9    NA     0
  -10106   10    NA     0
  -10107    1    NA     2
  -10107    2    NA     0
  -10107    3    NA     0
  -10107    4    NA     0
  -10107    5    NA     0
  -10107    6    NA     0
  -10107    7    NA     0
  -10107    8    NA     0
  -10107    9    NA     0
  -10107   10    NA     0
  -10108    1    NA     2
  -10108    2    NA     0
  -10108    3    NA     0
  -10108    4    NA     0
  -10108    5    NA     0
  -10108    6    NA     0
  -10108    7    NA     0
  -10108    8    NA     0
  -10108    9    NA     0
  -10108   10    NA     0
  -10109    1    NA     2
  -10109    2    NA     0
  -10109    3    NA     0
  -10109    4    NA     0
  -10109    5    NA     0
  -10109    6    NA     0
  -10109    7    NA     0
  -10109    8    NA     0
  -10109    9    NA     0
  -10109   10    NA     0
  -10110    1    NA     2
  -10110    2    NA     0
  -10110    3    NA     0
  -10110    4    NA     0
  -10110    5    NA     0
  -10110    6    NA     0
  -10110    7    NA     0
  -10110    8    NA     0
  -10110    9    NA     0
  -10110   10    NA     0
  -10111    1    NA     2
  -10111    2    NA     0
  -10111    3    NA     0
  -10111    4    NA     0
  -10111    5    NA     0
  -10111    6    NA     0
  -10111    7    NA     0
  -10111    8    NA     0
  -10111    9    NA     0
  -10111   10    NA     0
  -10112    1    NA     2
  -10112    2    NA     0
  -10112    3    NA     0
  -10112    4    NA     0
  -10112    5    NA     0
  -10112    6    NA     0
  -10112    7    NA     0
  -10112    8    NA     0
  -10112    9    NA     0
  -10112   10    NA     0
  -10113    1    NA     2
  -10113    2    NA     0
  -10113    3    NA     0
  -10113    4    NA     0
  -10113    5    NA     0
  -10113    6    NA     0
  -10113    7    NA     0
  -10113    8    NA     0
  -10113    9    NA     0
  -10113   10    NA     0
  -10114    1    NA     2
  -10114    2    NA     0
  -10114    3    NA     0
  -10114    4    NA     0
  -10114    5    NA     0
  -10114    6    NA     0
  -10114    7    NA     0
  -10114    8    NA     0
  -10114    9    NA     0
  -10114   10    NA     0
  -10115    1    NA     2
  -10115    2    NA     0
  -10115    3    NA     0
  -10115    4    NA     0
  -10115    5    NA     0
  -10115    6    NA     0
  -10115    7    NA     0
  -10115    8    NA     0
  -10115    9    NA     0
  -10115   10    NA     0
  -10116    1    NA     2
  -10116    2    NA     0
  -10116    3    NA     0
  -10116    4    NA     0
  -10116    5    NA     0
  -10116    6    NA     0
  -10116    7    NA     0
  -10116    8    NA     0
  -10116    9    NA     0
  -10116   10    NA     0
  -10117    1    NA     2
  -10117    2    NA     0
  -10117    3    NA     0
  -10117    4    NA     0
  -10117    5    NA     0
  -10117    6    NA     0
  -10117    7    NA     0
  -10117    8    NA     0
  -10117    9    NA     0
  -10117   10    NA     0
  -10118    1    NA     2
  -10118    2    NA     0
  -10118    3    NA     0
  -10118    4    NA     0
  -10118    5    NA     0
  -10118    6    NA     0
  -10118    7    NA     0
  -10118    8    NA     0
  -10118    9    NA     0
  -10118   10    NA     0
  -10119    1    NA     2
  -10119    2    NA     0
  -10119    3    NA     0
  -10119    4    NA     0
  -10119    5    NA     0
  -10119    6    NA     0
  -10119    7    NA     0
  -10119    8    NA     0
  -10119    9    NA     0
  -10119   10    NA     0
  -10120    1    NA     2
  -10120    2    NA     0
  -10120    3    NA     0
  -10120    4    NA     0
  -10120    5    NA     0
  -10120    6    NA     0
  -10120    7    NA     0
  -10120    8    NA     0
  -10120    9    NA     0
  -10120   10    NA     0
  -10121    1    NA     2
  -10121    2    NA     0
  -10121    3    NA     0
  -10121    4    NA     0
  -10121    5    NA     0
  -10121    6    NA     0
  -10121    7    NA     0
  -10121    8    NA     0
  -10121    9    NA     0
  -10121   10    NA     0
  -10122    1    NA     2
  -10122    2    NA     0
  -10122    3    NA     0
  -10122    4    NA     0
  -10122    5    NA     0
  -10122    6    NA     0
  -10122    7    NA     0
  -10122    8    NA     0
  -10122    9    NA     0
  -10122   10    NA     0
  -10123    1    NA     2
  -10123    2    NA     0
  -10123    3    NA     0
  -10123    4    NA     0
  -10123    5    NA     0
  -10123    6    NA     0
  -10123    7    NA     0
  -10123    8    NA     0
  -10123    9    NA     0
  -10123   10    NA     0
  -10124    1    NA     2
  -10124    2    NA     0
  -10124    3    NA     0
  -10124    4    NA     0
  -10124    5    NA     0
  -10124    6    NA     0
  -10124    7    NA     0
  -10124    8    NA     0
  -10124    9    NA     0
  -10124   10    NA     0
  -10125    1    NA     2
  -10125    2    NA     0
  -10125    3    NA     0
  -10125    4    NA     0
  -10125    5    NA     0
  -10125    6    NA     0
  -10125    7    NA     0
  -10125    8    NA     0
  -10125    9    NA     0
  -10125   10    NA     0
  -10126    1    NA     2
  -10126    2    NA     0
  -10126    3    NA     0
  -10126    4    NA     0
  -10126    5    NA     0
  -10126    6    NA     0
  -10126    7    NA     0
  -10126    8    NA     0
  -10126    9    NA     0
  -10126   10    NA     0
  -10127    1    NA     2
  -10127    2    NA     0
  -10127    3    NA     0
  -10127    4    NA     0
  -10127    5    NA     0
  -10127    6    NA     0
  -10127    7    NA     0
  -10127    8    NA     0
  -10127    9    NA     0
  -10127   10    NA     0
  -10128    1    NA     2
  -10128    2    NA     0
  -10128    3    NA     0
  -10128    4    NA     0
  -10128    5    NA     0
  -10128    6    NA     0
  -10128    7    NA     0
  -10128    8    NA     0
  -10128    9    NA     0
  -10128   10    NA     0
  -10129    1    NA     2
  -10129    2    NA     0
  -10129    3    NA     0
  -10129    4    NA     0
  -10129    5    NA     0
  -10129    6    NA     0
  -10129    7    NA     0
  -10129    8    NA     0
  -10129    9    NA     0
  -10129   10    NA     0
  -10130    1    NA     2
  -10130    2    NA     0
  -10130    3    NA     0
  -10130    4    NA     0
  -10130    5    NA     0
  -10130    6    NA     0
  -10130    7    NA     0
  -10130    8    NA     0
  -10130    9    NA     0
  -10130   10    NA     0
  -10131    1    NA     2
  -10131    2    NA     0
  -10131    3    NA     0
  -10131    4    NA     0
  -10131    5    NA     0
  -10131    6    NA     0
  -10131    7    NA     0
  -10131    8    NA     0
  -10131    9    NA     0
  -10131   10    NA     0
  -10132    1    NA     2
  -10132    2    NA     0
  -10132    3    NA     0
  -10132    4    NA     0
  -10132    5    NA     0
  -10132    6    NA     0
  -10132    7    NA     0
  -10132    8    NA     0
  -10132    9    NA     0
  -10132   10    NA     0
  -10133    1    NA     2
  -10133    2    NA     0
  -10133    3    NA     0
  -10133    4    NA     0
  -10133    5    NA     0
  -10133    6    NA     0
  -10133    7    NA     0
  -10133    8    NA     0
  -10133    9    NA     0
  -10133   10    NA     0
  -10134    1    NA     2
  -10134    2    NA     0
  -10134    3    NA     0
  -10134    4    NA     0
  -10134    5    NA     0
  -10134    6    NA     0
  -10134    7    NA     0
  -10134    8    NA     0
  -10134    9    NA     0
  -10134   10    NA     0
  -10135    1    NA     2
  -10135    2    NA     0
  -10135    3    NA     0
  -10135    4    NA     0
  -10135    5    NA     0
  -10135    6    NA     0
  -10135    7    NA     0
  -10135    8    NA     0
  -10135    9    NA     0
  -10135   10    NA     0
  -10136    1    NA     2
  -10136    2    NA     0
  -10136    3    NA     0
  -10136    4    NA     0
  -10136    5    NA     0
  -10136    6    NA     0
  -10136    7    NA     0
  -10136    8    NA     0
  -10136    9    NA     0
  -10136   10    NA     0
  -10137    1    NA     2
  -10137    2    NA     0
  -10137    3    NA     0
  -10137    4    NA     0
  -10137    5    NA     0
  -10137    6    NA     0
  -10137    7    NA     0
  -10137    8    NA     0
  -10137    9    NA     0
  -10137   10    NA     0
  -10138    1    NA     2
  -10138    2    NA     0
  -10138    3    NA     0
  -10138    4    NA     0
  -10138    5    NA     0
  -10138    6    NA     0
  -10138    7    NA     0
  -10138    8    NA     0
  -10138    9    NA     0
  -10138   10    NA     0
  -10139    1    NA     2
  -10139    2    NA     0
  -10139    3    NA     0
  -10139    4    NA     0
  -10139    5    NA     0
  -10139    6    NA     0
  -10139    7    NA     0
  -10139    8    NA     0
  -10139    9    NA     0
  -10139   10    NA     0
  -10140    1    NA     2
  -10140    2    NA     0
  -10140    3    NA     0
  -10140    4    NA     0
  -10140    5    NA     0
  -10140    6    NA     0
  -10140    7    NA     0
  -10140    8    NA     0
  -10140    9    NA     0
  -10140   10    NA     0
  -10141    1    NA     2
  -10141    2    NA     0
  -10141    3    NA     0
  -10141    4    NA     0
  -10141    5    NA     0
  -10141    6    NA     0
  -10141    7    NA     0
  -10141    8    NA     0
  -10141    9    NA     0
  -10141   10    NA     0
  -10142    1    NA     2
  -10142    2    NA     0
  -10142    3    NA     0
  -10142    4    NA     0
  -10142    5    NA     0
  -10142    6    NA     0
  -10142    7    NA     0
  -10142    8    NA     0
  -10142    9    NA     0
  -10142   10    NA     0
  -10143    1    NA     2
  -10143    2    NA     0
  -10143    3    NA     0
  -10143    4    NA     0
  -10143    5    NA     0
  -10143    6    NA     0
  -10143    7    NA     0
  -10143    8    NA     0
  -10143    9    NA     0
  -10143   10    NA     0
  -10144    1    NA     2
  -10144    2    NA     0
  -10144    3    NA     0
  -10144    4    NA     0
  -10144    5    NA     0
  -10144    6    NA     0
  -10144    7    NA     0
  -10144    8    NA     0
  -10144    9    NA     0
  -10144   10    NA     0

$`11_JPTP vs. 12_Age10LW`
   flagtype flag par1 par2                                        meaning
1        -1    3   25   37 1st age of common terminal selectivity [4.5.6]
2        -2    3   25   37 1st age of common terminal selectivity [4.5.6]
3        -3    3   25   37 1st age of common terminal selectivity [4.5.6]
4        -4    3   25   37 1st age of common terminal selectivity [4.5.6]
5        -5    3   25   37 1st age of common terminal selectivity [4.5.6]
6        -6    3   25   37 1st age of common terminal selectivity [4.5.6]
7        -7    3   25   37 1st age of common terminal selectivity [4.5.6]
8        -8    3   25   37 1st age of common terminal selectivity [4.5.6]
9        -9    3   25   37 1st age of common terminal selectivity [4.5.6]
10      -10    3   25   37 1st age of common terminal selectivity [4.5.6]
11      -11    3   25   37 1st age of common terminal selectivity [4.5.6]
12      -12    3   25   37 1st age of common terminal selectivity [4.5.6]
13      -13    3   25   37 1st age of common terminal selectivity [4.5.6]
14      -14    3   25   37 1st age of common terminal selectivity [4.5.6]
15      -15    3   25   37 1st age of common terminal selectivity [4.5.6]
16      -16    3   25   37 1st age of common terminal selectivity [4.5.6]
17      -17    3   25   37 1st age of common terminal selectivity [4.5.6]
18      -18    3   25   37 1st age of common terminal selectivity [4.5.6]
19      -19    3   25   37 1st age of common terminal selectivity [4.5.6]
20      -20    3   25   37 1st age of common terminal selectivity [4.5.6]
21      -21    3   25   37 1st age of common terminal selectivity [4.5.6]
22      -22    3   25   37 1st age of common terminal selectivity [4.5.6]
23      -23    3   25   37 1st age of common terminal selectivity [4.5.6]
24      -24    3   25   37 1st age of common terminal selectivity [4.5.6]
25      -25    3   25   37 1st age of common terminal selectivity [4.5.6]
26      -26    3   25   37 1st age of common terminal selectivity [4.5.6]
27      -27    3   25   37 1st age of common terminal selectivity [4.5.6]
28      -28    3   25   37 1st age of common terminal selectivity [4.5.6]
29      -29    3   25   37 1st age of common terminal selectivity [4.5.6]
30      -30    3   25   37 1st age of common terminal selectivity [4.5.6]
31      -31    3   25   37 1st age of common terminal selectivity [4.5.6]
32      -32    3   25   37 1st age of common terminal selectivity [4.5.6]
33      -33    3   25   37 1st age of common terminal selectivity [4.5.6]
34      -34    3   25   37 1st age of common terminal selectivity [4.5.6]
35      -35    3   25   37 1st age of common terminal selectivity [4.5.6]
36      -36    3   25   37 1st age of common terminal selectivity [4.5.6]
37      -37    3   25   37 1st age of common terminal selectivity [4.5.6]
38      -38    3   25   37 1st age of common terminal selectivity [4.5.6]
39      -39    3   25   37 1st age of common terminal selectivity [4.5.6]
40      -40    3   25   37 1st age of common terminal selectivity [4.5.6]
41      -41    3   25   37 1st age of common terminal selectivity [4.5.6]

$`12_Age10LW vs. 13_CondAge`
    flagtype flag   par1   par2                                                      meaning
1          2  113      1      0                   scaling init. pop and rectuitment [4.5.10]
2          2  116     70      0                    maximum allowable fishing mortality level
3          2  144 100000  10000                       common wt for catch L to 10000 [4.5.2]
4          1    1  15000  50000                                    function evaluation limit
5          1   32      6      7 define initial control regime (e.g. Kleiber control) [4.5.1]
6          1  173      8      0                  1st n lengths are indep. parameters [4.5.4]
7          1  182     10      0                    penalty wt. for length estimation [4.5.4]
8          1  184      1      0               switch on estimaton of 1st n lengths (see 173)
9          1  240      0      1                             activates fit to age-length data
10        -1    4      4      2                                     est. effort devs [4.5.7]
11        -1   21      4      0              seasonal growth \x96 under construction [4.5.4]
12        -1   45      0 100000                           fishery specific catch wts [4.5.2]
13        -2    4      4      2                                     est. effort devs [4.5.7]
14        -2   21      4      0              seasonal growth \x96 under construction [4.5.4]
15        -2   45      0 100000                           fishery specific catch wts [4.5.2]
16        -3    4      4      2                                     est. effort devs [4.5.7]
17        -3   21      4      0              seasonal growth \x96 under construction [4.5.4]
18        -3   29     10      3           grouping for common catchability deviations[4.5.5]
19        -3   45      0 100000                           fishery specific catch wts [4.5.2]
20        -3   60     10      3              grouping for common initial catchability[4.5.5]
21        -4    4      4      2                                     est. effort devs [4.5.7]
22        -4   21      4      0              seasonal growth \x96 under construction [4.5.4]
23        -4   29      3      4           grouping for common catchability deviations[4.5.5]
24        -4   45      0 100000                           fishery specific catch wts [4.5.2]
25        -4   60      3      4              grouping for common initial catchability[4.5.5]
26        -5    4      4      2                                     est. effort devs [4.5.7]
27        -5   21      4      0              seasonal growth \x96 under construction [4.5.4]
28        -5   29     11      5           grouping for common catchability deviations[4.5.5]
29        -5   45      0 100000                           fishery specific catch wts [4.5.2]
30        -5   60     11      5              grouping for common initial catchability[4.5.5]
31        -6    4      4      2                                     est. effort devs [4.5.7]
32        -6   21      4      0              seasonal growth \x96 under construction [4.5.4]
33        -6   29     12      6           grouping for common catchability deviations[4.5.5]
34        -6   45      0 100000                           fishery specific catch wts [4.5.2]
35        -6   57      1      3                      functional form for selectivity [4.5.6]
36        -6   60     12      6              grouping for common initial catchability[4.5.5]
37        -7    4      4      2                                     est. effort devs [4.5.7]
38        -7   21      4      0              seasonal growth \x96 under construction [4.5.4]
39        -7   29      8      7           grouping for common catchability deviations[4.5.5]
40        -7   45      0 100000                           fishery specific catch wts [4.5.2]
41        -7   60      8      7              grouping for common initial catchability[4.5.5]
42        -8    4      4      2                                     est. effort devs [4.5.7]
43        -8   21      4      0              seasonal growth \x96 under construction [4.5.4]
44        -8   29      4      8           grouping for common catchability deviations[4.5.5]
45        -8   45      0 100000                           fishery specific catch wts [4.5.2]
46        -8   60      4      8              grouping for common initial catchability[4.5.5]
47        -9    4      4      2                                     est. effort devs [4.5.7]
48        -9   21      4      0              seasonal growth \x96 under construction [4.5.4]
49        -9   29      5      9           grouping for common catchability deviations[4.5.5]
50        -9   45      0 100000                           fishery specific catch wts [4.5.2]
51        -9   60      5      9              grouping for common initial catchability[4.5.5]
52       -10    4      4      2                                     est. effort devs [4.5.7]
53       -10   21      4      0              seasonal growth \x96 under construction [4.5.4]
54       -10   29     13     10           grouping for common catchability deviations[4.5.5]
55       -10   45      0 100000                           fishery specific catch wts [4.5.2]
56       -10   60     13     10              grouping for common initial catchability[4.5.5]
57       -11    4      4      2                                     est. effort devs [4.5.7]
58       -11   21      4      0              seasonal growth \x96 under construction [4.5.4]
59       -11   29      6     11           grouping for common catchability deviations[4.5.5]
60       -11   45      0 100000                           fishery specific catch wts [4.5.2]
61       -11   60      6     11              grouping for common initial catchability[4.5.5]
62       -12    4      4      2                                     est. effort devs [4.5.7]
63       -12   21      4      0              seasonal growth \x96 under construction [4.5.4]
64       -12   29      7     12           grouping for common catchability deviations[4.5.5]
65       -12   45      0 100000                           fishery specific catch wts [4.5.2]
66       -12   60      7     12              grouping for common initial catchability[4.5.5]
67       -13    4      4      2                                     est. effort devs [4.5.7]
68       -13   21      4      0              seasonal growth \x96 under construction [4.5.4]
69       -13   29     14     13           grouping for common catchability deviations[4.5.5]
70       -13   45      0 100000                           fishery specific catch wts [4.5.2]
71       -13   60     14     13              grouping for common initial catchability[4.5.5]
72       -14    4      4      2                                     est. effort devs [4.5.7]
73       -14   21      4      0              seasonal growth \x96 under construction [4.5.4]
74       -14   29     15     14           grouping for common catchability deviations[4.5.5]
75       -14   45      0 100000                           fishery specific catch wts [4.5.2]
76       -14   60     15     14              grouping for common initial catchability[4.5.5]
77       -15    4      4      2                                     est. effort devs [4.5.7]
78       -15   21      4      0              seasonal growth \x96 under construction [4.5.4]
79       -15   29     16     15           grouping for common catchability deviations[4.5.5]
80       -15   45      0 100000                           fishery specific catch wts [4.5.2]
81       -15   60     16     15              grouping for common initial catchability[4.5.5]
82       -16    4      4      2                                     est. effort devs [4.5.7]
83       -16   21      4      0              seasonal growth \x96 under construction [4.5.4]
84       -16   29     17     16           grouping for common catchability deviations[4.5.5]
85       -16   45      0 100000                           fishery specific catch wts [4.5.2]
86       -16   60     17     16              grouping for common initial catchability[4.5.5]
87       -17    3     37     12               1st age of common terminal selectivity [4.5.6]
88       -17    4      4      2                                     est. effort devs [4.5.7]
89       -17   21      4      0              seasonal growth \x96 under construction [4.5.4]
90       -17   29     18     17           grouping for common catchability deviations[4.5.5]
91       -17   45      0 100000                           fishery specific catch wts [4.5.2]
92       -17   60     18     17              grouping for common initial catchability[4.5.5]
93       -18    4      4      2                                     est. effort devs [4.5.7]
94       -18   21      4      0              seasonal growth \x96 under construction [4.5.4]
95       -18   29     19     18           grouping for common catchability deviations[4.5.5]
96       -18   45      0 100000                           fishery specific catch wts [4.5.2]
97       -18   60     19     18              grouping for common initial catchability[4.5.5]
98       -19    4      4      2                                     est. effort devs [4.5.7]
99       -19   21      4      0              seasonal growth \x96 under construction [4.5.4]
100      -19   29     20     19           grouping for common catchability deviations[4.5.5]
101      -19   45      0 100000                           fishery specific catch wts [4.5.2]
102      -19   60     20     19              grouping for common initial catchability[4.5.5]
103      -20    3     37     24               1st age of common terminal selectivity [4.5.6]
104      -20    4      4      2                                     est. effort devs [4.5.7]
105      -20   21      4      0              seasonal growth \x96 under construction [4.5.4]
106      -20   29     21     20           grouping for common catchability deviations[4.5.5]
107      -20   45      0 100000                           fishery specific catch wts [4.5.2]
108      -20   60     21     20              grouping for common initial catchability[4.5.5]
109      -21    3     37     24               1st age of common terminal selectivity [4.5.6]
110      -21    4      4      2                                     est. effort devs [4.5.7]
111      -21   21      4      0              seasonal growth \x96 under construction [4.5.4]
112      -21   29     22     21           grouping for common catchability deviations[4.5.5]
113      -21   45      0 100000                           fishery specific catch wts [4.5.2]
114      -21   60     22     21              grouping for common initial catchability[4.5.5]
115      -22    3     37     24               1st age of common terminal selectivity [4.5.6]
116      -22    4      4      2                                     est. effort devs [4.5.7]
117      -22   21      4      0              seasonal growth \x96 under construction [4.5.4]
118      -22   29     23     22           grouping for common catchability deviations[4.5.5]
119      -22   45      0 100000                           fishery specific catch wts [4.5.2]
120      -22   60     23     22              grouping for common initial catchability[4.5.5]
121      -23    3     37     12               1st age of common terminal selectivity [4.5.6]
122      -23    4      4      2                                     est. effort devs [4.5.7]
123      -23   21      4      0              seasonal growth \x96 under construction [4.5.4]
124      -23   29     24     23           grouping for common catchability deviations[4.5.5]
125      -23   45      0 100000                           fishery specific catch wts [4.5.2]
126      -23   60     24     23              grouping for common initial catchability[4.5.5]
127      -24    3     37     12               1st age of common terminal selectivity [4.5.6]
128      -24    4      4      2                                     est. effort devs [4.5.7]
129      -24   21      4      0              seasonal growth \x96 under construction [4.5.4]
130      -24   29     25     24           grouping for common catchability deviations[4.5.5]
131      -24   45      0 100000                           fishery specific catch wts [4.5.2]
132      -24   60     25     24              grouping for common initial catchability[4.5.5]
133      -25    4      4      2                                     est. effort devs [4.5.7]
134      -25   21      4      0              seasonal growth \x96 under construction [4.5.4]
135      -25   29     26     25           grouping for common catchability deviations[4.5.5]
136      -25   45      0 100000                           fishery specific catch wts [4.5.2]
137      -25   60     26     25              grouping for common initial catchability[4.5.5]
138      -26    4      4      2                                     est. effort devs [4.5.7]
139      -26   21      4      0              seasonal growth \x96 under construction [4.5.4]
140      -26   29     27     26           grouping for common catchability deviations[4.5.5]
141      -26   45      0 100000                           fishery specific catch wts [4.5.2]
142      -26   60     27     26              grouping for common initial catchability[4.5.5]
143      -27    4      4      2                                     est. effort devs [4.5.7]
144      -27   21      4      0              seasonal growth \x96 under construction [4.5.4]
145      -27   29     28     27           grouping for common catchability deviations[4.5.5]
146      -27   45      0 100000                           fishery specific catch wts [4.5.2]
147      -27   60     28     27              grouping for common initial catchability[4.5.5]
148      -28    3     37     12               1st age of common terminal selectivity [4.5.6]
149      -28    4      4      2                                     est. effort devs [4.5.7]
150      -28   21      4      0              seasonal growth \x96 under construction [4.5.4]
151      -28   29     29     28           grouping for common catchability deviations[4.5.5]
152      -28   45      0 100000                           fishery specific catch wts [4.5.2]
153      -28   60     29     28              grouping for common initial catchability[4.5.5]
154      -28   61      4      5         number of nodes for cubic spline selectivity [4.5.6]
155      -29    4      4      2                                     est. effort devs [4.5.7]
156      -29   21      4      0              seasonal growth \x96 under construction [4.5.4]
157      -29   29      9     29           grouping for common catchability deviations[4.5.5]
158      -29   45      0 100000                           fishery specific catch wts [4.5.2]
159      -29   60      9     29              grouping for common initial catchability[4.5.5]
160      -30    4      4      2                                     est. effort devs [4.5.7]
161      -30   21      4      0              seasonal growth \x96 under construction [4.5.4]
162      -30   45      0 100000                           fishery specific catch wts [4.5.2]
163      -31    4      4      2                                     est. effort devs [4.5.7]
164      -31   21      4      0              seasonal growth \x96 under construction [4.5.4]
165      -31   45      0 100000                           fishery specific catch wts [4.5.2]
166      -32    3     37     12               1st age of common terminal selectivity [4.5.6]
167      -32    4      4      2                                     est. effort devs [4.5.7]
168      -32   21      4      0              seasonal growth \x96 under construction [4.5.4]
169      -32   45      0 100000                           fishery specific catch wts [4.5.2]
170      -33    4      4      2                                     est. effort devs [4.5.7]
171      -33   21      4      0              seasonal growth \x96 under construction [4.5.4]
172      -33   45      0 100000                           fishery specific catch wts [4.5.2]
173      -34    4      4      2                                     est. effort devs [4.5.7]
174      -34   21      4      0              seasonal growth \x96 under construction [4.5.4]
175      -34   45      0 100000                           fishery specific catch wts [4.5.2]
176      -35    4      4      2                                     est. effort devs [4.5.7]
177      -35   21      4      0              seasonal growth \x96 under construction [4.5.4]
178      -35   45      0 100000                           fishery specific catch wts [4.5.2]
179      -36    4      4      2                                     est. effort devs [4.5.7]
180      -36   21      4      0              seasonal growth \x96 under construction [4.5.4]
181      -36   45      0 100000                           fishery specific catch wts [4.5.2]
182      -37    4      4      2                                     est. effort devs [4.5.7]
183      -37   21      4      0              seasonal growth \x96 under construction [4.5.4]
184      -37   45      0 100000                           fishery specific catch wts [4.5.2]
185      -38    4      4      2                                     est. effort devs [4.5.7]
186      -38   21      4      0              seasonal growth \x96 under construction [4.5.4]
187      -38   45      0 100000                           fishery specific catch wts [4.5.2]
188      -39    4      4      2                                     est. effort devs [4.5.7]
189      -39   21      4      0              seasonal growth \x96 under construction [4.5.4]
190      -39   45      0 100000                           fishery specific catch wts [4.5.2]
191      -40    4      4      2                                     est. effort devs [4.5.7]
192      -40   21      4      0              seasonal growth \x96 under construction [4.5.4]
193      -40   45      0 100000                           fishery specific catch wts [4.5.2]
194      -41    4      4      2                                     est. effort devs [4.5.7]
195      -41   21      4      0              seasonal growth \x96 under construction [4.5.4]
196      -41   45      0 100000                           fishery specific catch wts [4.5.2]

$`13_CondAge vs. 14_MatLength`
  flagtype flag par1 par2 meaning
1        2  188    0    2

$`14_MatLength vs. 15_NoSpnFrac`
[1] flagtype flag     par1     par2     meaning
<0 rows> (or 0-length row.names)

$`15_NoSpnFrac vs. 16_Size60`
   flagtype flag  par1  par2                    meaning
1         1    1 50000 30000  function evaluation limit
2        -1   49    40   120 length sample size [4.5.3]
3        -1   50    40   120 weight sample size [4.5.3]
4        -2   49    40   120 length sample size [4.5.3]
5        -2   50    40   120 weight sample size [4.5.3]
6        -3   49    20    60 length sample size [4.5.3]
7        -3   50    20    60 weight sample size [4.5.3]
8        -4   49    40   120 length sample size [4.5.3]
9        -4   50    40   120 weight sample size [4.5.3]
10       -5   49    20    60 length sample size [4.5.3]
11       -5   50    20    60 weight sample size [4.5.3]
12       -6   49    20    60 length sample size [4.5.3]
13       -6   50    20    60 weight sample size [4.5.3]
14       -7   49    40   120 length sample size [4.5.3]
15       -7   50    40   120 weight sample size [4.5.3]
16       -8   49    40   120 length sample size [4.5.3]
17       -8   50    40   120 weight sample size [4.5.3]
18       -9   49    40   120 length sample size [4.5.3]
19       -9   50    40   120 weight sample size [4.5.3]
20      -10   49    20    60 length sample size [4.5.3]
21      -10   50    20    60 weight sample size [4.5.3]
22      -11   49    40   120 length sample size [4.5.3]
23      -11   50    40   120 weight sample size [4.5.3]
24      -12   49    40   120 length sample size [4.5.3]
25      -12   50    40   120 weight sample size [4.5.3]
26      -13   49    20    60 length sample size [4.5.3]
27      -13   50    20    60 weight sample size [4.5.3]
28      -14   49    20    60 length sample size [4.5.3]
29      -14   50    20    60 weight sample size [4.5.3]
30      -15   49    20    60 length sample size [4.5.3]
31      -15   50    20    60 weight sample size [4.5.3]
32      -16   49    20    60 length sample size [4.5.3]
33      -16   50    20    60 weight sample size [4.5.3]
34      -17   49    20    60 length sample size [4.5.3]
35      -17   50    20    60 weight sample size [4.5.3]
36      -18   49    20    60 length sample size [4.5.3]
37      -18   50    20    60 weight sample size [4.5.3]
38      -19   49    20    60 length sample size [4.5.3]
39      -19   50    20    60 weight sample size [4.5.3]
40      -20   49    20    60 length sample size [4.5.3]
41      -20   50    20    60 weight sample size [4.5.3]
42      -21   49    20    60 length sample size [4.5.3]
43      -21   50    20    60 weight sample size [4.5.3]
44      -22   49    20    60 length sample size [4.5.3]
45      -22   50    20    60 weight sample size [4.5.3]
46      -23   49    20    60 length sample size [4.5.3]
47      -23   50    20    60 weight sample size [4.5.3]
48      -24   49    20    60 length sample size [4.5.3]
49      -24   50    20    60 weight sample size [4.5.3]
50      -25   49    20    60 length sample size [4.5.3]
51      -25   50    20    60 weight sample size [4.5.3]
52      -26   49    20    60 length sample size [4.5.3]
53      -26   50    20    60 weight sample size [4.5.3]
54      -27   49    20    60 length sample size [4.5.3]
55      -27   50    20    60 weight sample size [4.5.3]
56      -28   49    20    60 length sample size [4.5.3]
57      -28   50    20    60 weight sample size [4.5.3]
58      -29   49    40   120 length sample size [4.5.3]
59      -29   50    40   120 weight sample size [4.5.3]
60      -30   49    20    60 length sample size [4.5.3]
61      -30   50    20    60 weight sample size [4.5.3]
62      -31   49    20    60 length sample size [4.5.3]
63      -31   50    20    60 weight sample size [4.5.3]
64      -32   49    20    60 length sample size [4.5.3]
65      -32   50    20    60 weight sample size [4.5.3]
66      -33   49    40   120 length sample size [4.5.3]
67      -33   50    40   120 weight sample size [4.5.3]
68      -34   49    40   120 length sample size [4.5.3]
69      -34   50    40   120 weight sample size [4.5.3]
70      -35   49    40   120 length sample size [4.5.3]
71      -35   50    40   120 weight sample size [4.5.3]
72      -36   49    40   120 length sample size [4.5.3]
73      -36   50    40   120 weight sample size [4.5.3]
74      -37   49    40   120 length sample size [4.5.3]
75      -37   50    40   120 weight sample size [4.5.3]
76      -38   49    40   120 length sample size [4.5.3]
77      -38   50    40   120 weight sample size [4.5.3]
78      -39   49    40   120 length sample size [4.5.3]
79      -39   50    40   120 weight sample size [4.5.3]
80      -40   49    40   120 length sample size [4.5.3]
81      -40   50    40   120 weight sample size [4.5.3]
82      -41   49    40   120 length sample size [4.5.3]
83      -41   50    40   120 weight sample size [4.5.3]

$`16_Size60 vs. 17_Diag20`
   flagtype flag  par1  par2                                         meaning
1         1    1 30000 50000                       function evaluation limit
2         1   50    -2    -3                 maximum gradient target [4.5.1]
3       -13   75     0     1 age classes for zero selectivity-at-age [4.5.6]
4       -14   75     0     1 age classes for zero selectivity-at-age [4.5.6]
5       -15   75     0     1 age classes for zero selectivity-at-age [4.5.6]
6       -16   75     0     1 age classes for zero selectivity-at-age [4.5.6]
7       -19   75     0     1 age classes for zero selectivity-at-age [4.5.6]
8       -20   75     0     1 age classes for zero selectivity-at-age [4.5.6]
9       -21   75     0     1 age classes for zero selectivity-at-age [4.5.6]
10      -22   75     0     1 age classes for zero selectivity-at-age [4.5.6]
11      -25   75     0     1 age classes for zero selectivity-at-age [4.5.6]
12      -26   75     0     1 age classes for zero selectivity-at-age [4.5.6]
13      -30   75     0     1 age classes for zero selectivity-at-age [4.5.6]
14      -31   75     0     1 age classes for zero selectivity-at-age [4.5.6]