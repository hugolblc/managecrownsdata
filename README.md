
<!-- README.md is generated from README.Rmd. Please edit that file -->

# managecrownsdata

- [The package](#the-package)
- [Citation](#citation)
- [Pre-installation](#pre-installation)
- [Use managecrownsdata](use-managecrownsdata#)

<!-- badges: start -->
<!-- badges: end -->

## The package

This R package aims at streamlining, standardizing and facilitating
processing of repetead UAV surveys from R. It focuses (for now) on RGB
data. It notably allows generating 3D and 4D mosaics & mosaics spatial
alignment using state-of-the-art approaches, provides tools to generate
reference labels, segment crowns (?) and classify crown phenophases.

## Citation

To cite ‘managecrownsdata’, please use citation(‘managecrownsdata’).

## Pre-installation (called once)

``` r

# Install anaconda 'https://www.anaconda.com/'

#Install reticulate 
install.packages('reticulate')

#Install miniconda
library(reticulate)
options(timeout=100000000) 
install_miniconda()

# Create a conda environment from the environment.yaml file
conda_create(envname = "pipeline_test_R",
             environment = 'C:/Users/2022hl001/Downloads/environment.yaml')
```

## Installation

You can install the development version of managecrownsdata like so :

``` r
remotes::install_github("hugolblc/managecrownsdata")
```

## Use managecrownsdata (called before loading `managecrownsdata` )

``` r
# Restrt R session
.rs.restartR()

# Set environment
Sys.setenv(RETICULATE_PYTHON= reticulate::conda_python('pipeline_test_R'))

library(reticulate)

use_condaenv(condaenv = "pipeline_test_R", required = TRUE)

library(managecrownsdata)
```
