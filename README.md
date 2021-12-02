
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tpwdata

<!-- badges: start -->

[![R-CMD-check](https://github.com/Turning-Points-for-Women-Study/tpwdata/workflows/R-CMD-check/badge.svg)](https://github.com/Turning-Points-for-Women-Study/tpwdata/actions)
<!-- badges: end -->

The goal of tpwdata is to pull survey data from qualtrics into R.
Eventually, some basic data processing will occur as well. We also plan
to build in data validation checks, but most of this has not yet
happened.

## Installation

You can install the development version of **tpw** from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("Turning-Points-for-Women-Study/tpwdata")
```

## Example

You first should get an API key from qualtrics. You can then set your
key with the `set_key()` function, which will also store the base URL
for this specific study. You should only have to do this once, and you
will likely need to restart R for the changes to take effect.

Once you have an API key and you have stored it with `set_key()`, you
can download any survey with `get_survey()` by passing the specific name
of the survey. If you don’t know the name of the survey, you can pass it
any name and a list of all available surveys will be returned. For
example:

``` r
library(tpwdata)
get_survey("hello!")
#> Error in get_survey("hello!"): Survey name 'hello!' is not valid. Survey name should be one of
#> Turning Points for Women Phone Interview 11.07.2021
#> Recruitment Script - 11.10.2021
#> Published Pilot Informed Consent - Turning Points for Women Study - Copy
#> Turning Points for Women Phone Interview 11.18.2021
#> Turning Points for Women Phone Interview - Master Copy 11.09.2021
#> Turning Points for Women Phone Interview 11.09.2021
#> Pilot 10.5.2021 Turning Points for Women Phone Interview
#> Biological Assessment 11.09.2021
#> Informed Consent - Master Copy 11.29.2021
#> Biological Assessment 11.05.2021
#> Turning Points for Women Phone Interview
#> Biological Assessment - Master Copy 11.01.2021
#> Undergraduate Research Assistant Onboarding Survey
#> Informed Consent - 11.02.2021
#> Research Study Pilot Screener
#> Full Pilot - Turning Points for Women Phone Interview
#> Turning Points for Women Phone Interview 11.10.2021
#> Published Pilot Telephone Interview Part I Training - Copy
#> Informed Consent - 11.29.2021
#> Biological Assessment - 10.7.2021
#> Recruitment Script - 11.09.2021
#> Untitled Project
```
