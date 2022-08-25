# MFCL Runs

## Reproducing the diagnostic

Run          | Description                                                  | Result | Runtime
------------ | ------------------------------------------------------------ | ------ | --------------------------
1-10-12-fast | Same as yft-2020-grid 1-10-12 but excluding slow Condor node | -      | Started 17:31 (2022-08-23)

---

## Run a model on Condor

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

## Minimalistic workflow

**Steps**
1. When we run condor_submit on the Condor server, its sends condor_wrapper.sh and Start.tar.gz to the Condor node
2. Then the Condor node runs condor_wrapper.sh, which unzips the tar ball and runs the doitall
3. When finished, the Condor node will zip all files into End.tar.gz

**Create Start.tar.gz**
```
create_start.sh
```
This zips all files into Start.tar.gz, to be submitted to Condor.

**Check update**
```
When finished, some system files (err, log, out) will appear inside the model folder, along with End.tar.gz
```
ll
```

## DAG workflow

**Create Start.tar.gz**
```
../../diagnostic/1-10-12-fast/create_start.sh
```

** Submit DAG **
```
condor_submit_dag condor.dag
```
