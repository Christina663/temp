
<!-- README.md is generated from README.Rmd. Please edit that file -->

# temp

<!-- badges: start -->
<!-- badges: end -->

The goal of temp is to convert a numerical representation of temperature
between three common unit : Fahrenheit, Celsius and Kelvin.

## Installation

The package temp is not yet on CRAN, but you can download it using the
following R command:

``` r
devtools::install_github("Christina663/temp")
```

## Example

This is a basic example which shows you how to solve a common problem
relating to temperature conversion:

``` r
library(temp)
temperature_conversion("K", "F", 50)
#> [1] -369.67
```
