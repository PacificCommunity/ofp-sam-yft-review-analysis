# Shiny app for the YFT assessment review (Sep 2022)

## Structure

Two folders:

* `R` - for code to explore and process the output files into something useful for the app
* `app` - the files for the Shiny app

## Generating the data

Note that the app does a minimal amount of data processing. This is to keep it more responsive; instead of passing a load of hefty rep, par and tag files, the data for the plots is pregenerated.

The code for generating data files used by the app is `R/stepwise_app_data_preparation.R`. By sourcing that script a bunch of `.RData` files should appear in the `app/data` folder.

At the top of that script is a vector of models. By adjusting this, more models can be added if the files are in the model folder.

### Files needed in each model folder

Each model folder should have the following files:

`length.fit` (for the catch size distribution plots), `frq`, `rep`, `par`, `obsX` and `predX` (for the catchability plots, where X is 1 to 31, or thereabouts)

## File location

The model runs prepared for the YFT review are on the Penguin file server `z:/yft/2020_review/analysis/stepwise`.
