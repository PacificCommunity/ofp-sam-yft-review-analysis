In Figure 14b in the report, there is a stepwise model run called 'Size60',
between 'NoSpnFrac' and 'Diag20'. Unfortunately, the 'Size60' model run is not
found in the Penguin folder as Matt left it.

We searched on Matt's D: drive and inside his 'AltDiags' folder, there is a
model run called 'CondVBSize60'. This is the only 'Size60' model run we have
found, but it does not match the 'Size60' in Figure 14b. Instead, it matches
exactly the Diag20 model run...

---

Compared to the previous stepwise model run 'NoSpnFrac', the Size60/Diag20 model
run makes the following changes:

1. Divide LL sample sizes by 60 (instead of 20)
2. Set selectivity to zero for youngest age (Qtr 1) for PS and PL fisheries
3. Introduce manual step 10a.par into the doitall procedure

---

In the assessment report, the description of Step 17 (Diag 20) is:

Fixing selectivity for age class 1 to 0 for the purse seine and pole-and-line
fisheries in an attempt to prevent recruitment only coming from the temperate
regions.

---

On a technical note, to set selectivity to zero for the youngest age, fish flag
75 is used, where a value of 0 means normal selectivity, 1 means that the
youngest age has zero selectivity, and 2 means that the two youngest ages have
zero selectivity.

The Diag20 model run may also run more model iterations than other model runs.
