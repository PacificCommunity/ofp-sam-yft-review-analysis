# MFCL Runs

## Reproducing the diagnostic

Run          | Description                                                  | Result | Runtime
------------ + ------------------------------------------------------------ + ------ | -------
1-10-12-fast | Same as yft-2020-grid 1-10-12 but excluding slow Condor node | -      | -

---

### To run a model on Condor:

**Connect to the Condor server**
```
ssh nouofpcalc02.corp.spc.int
```

**Navigate to a model folder and run**
```
condor_submit condor.sub
```

**Check Condor status**
```
condor_q
condor_status
```

**Check DAG update**

If the Condor run is organized in Condor DAG format, we can see output files
appearing inside the model folder
```
ll
```
