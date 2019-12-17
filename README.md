
<!-- README.md is generated from README.Rmd. Please edit that file -->

# SticsOnR: The R package for the [STICS](https://www6.paca.inra.fr/stics_eng/) model <img src="man/figures/logo.png" alt="logo" width="150" align="right" />

[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![Travis build
status](https://travis-ci.org/SticsRPacks/SticsOnR.svg?branch=master)](https://travis-ci.org/SticsRPacks/SticsOnR)
[![Codecov test
coverage](https://codecov.io/gh/SticsRPacks/SticsOnR/branch/master/graph/badge.svg)](https://codecov.io/gh/SticsRPacks/SticsOnR?branch=master)

The goal of SticsOnR is to perform simulations of the Stics model.

## Development

Follow up the development [here](sticsOnR.md).

## Installation

The development version from [GitHub](https://github.com/) can be
installed with:

``` r
devtools::install_github("SticsRPacks/SticsOnR")
```

Or using the lightweight
[remotes](https://github.com/r-lib/remotes#readme) package:

``` r
# install.packages("remotes")
remotes::install_github("SticsRPacks/SticsOnR")
```

## Examples

Here are basic examples which show you how to run the model from a R
model interface or a JavaStics one. More complete example are detailed
in … vignette

### Running the JavaStics interface

We need for that a JavaStics folder and a JavaStics workspace folder.
For example using the last distribution version for Stics 9.1 :
JavaSTICS-1.41-stics-9.1 It contains an example folder.

For running simulations from it, we can use the run\_javastics function
as follows

``` r
javastics_path <- "/path/to/JavaSTICS-1.41-stics-9.1"
# specifying a workspace as a subfolder of JavaStics 
workspace_path <- "example"
# or an absolute path to an extrenal folder
# workspace_path <- "/path/to/javastics/workspace"

# Running all usms contained in the workspace 
run_javatics(javastics_path, workspace_path)
```

### Using the model

We need for that a JavaStics folder and a directory, or a folder
containing usms subdirectories with text input files (converted from xml
JavaStics files).

``` r
# for windows/linux
stics_path <- "/path/to/JavaSTICS-1.41-stics-9.1/stics_modulo"
# for Mac
# stics_path <- "/path/to/JavaSTICS-1.41-stics-9.1/stics_modulo_mac

# specifying a directory  
files_dir_path <- "/path/to/files/dir"
run_stics(stics_path, files_dir_path)
# or a root directory
# files_root_dirs_path <- "/path/to/files/dirs/root"
run_stics(stics_path, files_root_dirs_path)
```

-----
