# Reproducing the diagnostic model run from the YFT 2020 assessment

Run          | Description                                                  | Result | Runtime
------------ + ------------------------------------------------------------ + ------ | -------
1-10-12-fast | Same as yft-2020-grid 1-10-12 but excluding slow Condor node | -      | -

---

### To run a model on Condor:

First connect to the Condor server
```
ssh nouofpcalc02.corp.spc.int
```

Then navigate to a model folder and run
```
condor_submit condor.sub
```
