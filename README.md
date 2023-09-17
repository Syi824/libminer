
<!-- README.md is generated from README.Rmd. Please edit that file -->

# libminer

<!-- badges: start -->
<!-- badges: end -->

The goal of libminer is to help you understand your libraries better,
and learn how to write packages.

## Installation

You can install the development version of libminer from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Syi824/libminer")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(libminer)

lib_summary()
#>                                                                                        Library
#> 1                         /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library
#> 2 /private/var/folders/qp/c1dq6qxn1sjcnkfbktb4129c0000gq/T/RtmprugVer/temp_libpath21dc2fdcd9a8
#> 3                                                       /Users/syi/Library/R/arm64/4.3/library
#>   n_packages
#> 1         29
#> 2          1
#> 3        217

#Also can calculates sizes
lib_summary(sizes = TRUE)
#>                                                                                        Library
#> 1                         /Library/Frameworks/R.framework/Versions/4.3-arm64/Resources/library
#> 2 /private/var/folders/qp/c1dq6qxn1sjcnkfbktb4129c0000gq/T/RtmprugVer/temp_libpath21dc2fdcd9a8
#> 3                                                       /Users/syi/Library/R/arm64/4.3/library
#>   n_packages  lib_size
#> 1         29  71350952
#> 2          1     14312
#> 3        217 746303353
```
