
<!-- README.md is generated from README.Rmd. Please edit that file -->

# temp

<!-- badges: start -->
<!-- badges: end -->

The goal of temp is to convert a numerical representation of temperature
values among three common units: Fahrenheit, Celsius and Kelvin.

## Installation

The package temp is not yet on CRAN, but you can download it using the
following R command:

``` r
devtools::install_github("Christina663/temp")
```

## Example

This is a basic example which shows you how to solve a common problem of
converting Kelvin representation of temperature values to Fahrenheit
representation:

``` r
library(temp)
temperature_conversion("K", "F", 50)
#> [1] -369.67
```

This is another basic example, and this time we convert Celsius
representation to Kelvin using the same syntax. Note that we can input
either the first letter of the unit or the full name:

``` r
temperature_conversion("Celsius", "Kelvin", 50)
#> [1] 323.15
```

And our last example is to convert Celsius representation to Fahrenheit.
Notice that we can also input a combination of full name of the unit and
first letter:

``` r
temperature_conversion("Celsius", "F", 50)
#> [1] 122
```
