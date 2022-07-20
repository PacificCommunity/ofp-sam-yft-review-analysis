# Summary of Challenges Encountered During the YFT Review Analysis

- Diagnostic model
- Condor
- Plot script
- 10a-12a manual steps
- Matt's personal drive
- R packages
- Stepwise model runs, reconstructing and analyzing

--------------------------------------------------------------------------------

March 2022

At the early stages of the YFT review analytical work, there was interest in the
following tasks:

1. Experiment in detail the consequences of specific changes
2. Convert to catch-conditioned model
3. Initiate model development for the 2023 assessment

For this, we needed to have the diagnostic model in a reproducible format that
could be run.

We found the diagnostic model in three places:

1. Diagnostic model folder
2. Grid
3. Zip file online

Each of those places looked different, in terms of files included. The zip file
was missing an input data file. Some runs seemed to go to phase 10, while others
went to 12 or 14.

In March, we ran the first model runs on our laptops. At this point, we had a
diagnostic model run that went to phase 10, which served as a starting point to
experiment with converting to catch-conditioned method.

A review plan and status update was presented at PAW near the end of March.

--------------------------------------------------------------------------------

April 2022

Our experiments with catch-conditioned conversion were based on swordfish
examples provided in the weekly MFCL sessions. This turned out to be a more
complex task than simply changing a few flags, as it also involved changing the
format and handling of the CPUE data.

At this time, we overheard problems that MFCL experts were running into with the
SKJ catch-conditioned model. It was decided that the catch-conditioning
conversion should be a later priority.

At closer examination and comparison of doitall files, a manual intervention
phase 10a (and a corresponding 12a) was discovered. This turned out to be a
necessary step to run the diagnostic model, performed in R and not included in
the doitall.

In our search for the diagnostic, we compared many model runs
(penguin.diagnostic.10, penguin.diagnostic.12, penguin.diagnostic, penguin.grid,
web.zip.file, our.condor.run, john.yft.diag) and tabulated quantities of
interest, such as neglogL, SBrecent. Unfortunately, there was no reference of
which values of neglogL, SBrecent, etc. the diagnostic model should have.

In April, we ran our first model runs on Condor. We made a few changes in the
doitall that were necessary to run and experimented the Condor DAG
functionality.

--------------------------------------------------------------------------------

May 2022

On 13 May, we had a chat with Matt.

The main script for producing the plots used in the report was missing. The
ReadMeRScriptGuide.docx states that ReportFigures.r should be on Penguin, but it
was not there.

Fabrice pointed us to an archive of Matt's personal drive, a 100 GB file on
P:/Archives. Exploring this maze of directories and subdirectories, we found a
copy of the ReportFigures.r script, along with related folders and files.

Exploring the functionality of FLR4MFCL, R4MFCL, diags4MFCL. Made a contribution
to FLR4MFCL to improve ssb() accessor.

Different naming schemes for model runs on Penguin, online zip, grid, assessment
report.

--------------------------------------------------------------------------------

June 2022

Stepwise folder on Penguin does not contain the stepwise model runs that are
presented in the stock assessment report.

We looked up the stepwise plot in ReportFigures.r and found that it was not
straightforward to use, with deeply nested functions to point at directories to
read from. The directories used for plotting were not those on Penguin but on
Matt's personal drive.

We searched on Matt's personal drive and found many folders containing possible
stepwise model runs. After examining all folders, the main directories
containing stepwise model runs were: Hopeful, SelStep, and AltDiags.

In many cases, similar model runs exist within the Hopeful directory tree and
the SelStep directory tree. It appears that this also caused confusion at the
time when the assessment report was written up, as the stepwise model run
Age10LW was plotted from the Hopeful directory tree but should have been the
SelStep directory tree, based on the logic of accumulative changes.

By reverse engineering, visually comparing the report Figure 14b to a large
number of candidate stepwise model runs, we have identified the model runs that
seem to have been used to generate Figure 14b in the report. These model runs
come from all three branches on Matt's personal drive (Hopeful, SelStep,
AltDiags). We have organized these stepwise model runs in a new area on Penguin
(Z:/yft/2020_review) with a script describing where each model run came from.

The SelUngroup stepwise model run was particularly difficult to locate. Many
similar model runs existed with different selectivity settings and the ones with
the most 'official' looking names did not match Figure 14b in the report. In the
end we found that Step9aaNoAge0Ungroup looked similar to the time series pattern
found in Figure 14b.

--------------------------------------------------------------------------------

July 2022

At this point, we have all stepwise model runs, with only one exception: Size60.
This model run is not found in the Penguin folder as it was archived after the
2020 assessment.

We searched on Matt's personal drive and inside AltDiags there is a model run
called CondVBSize60. This is the only Size60 model run we have found, but it
does not match the Size60 in Figure 14b. Instead, it matches exactly the Diag20
model run...

It seems that the intention of the Size60 model run was to divide the LL sample
sizes by 60 instead of 20. The last change in the stepwise model development
(between Size60 and Diag20) was to fix the selectivity at zero for the youngest
age (Qtr 1) for PS and PL fisheries.
