
<!-- README.md is generated from README.Rmd. Please edit that file -->
Overview
--------

`"binomial"` is a package that provides functions to do some relative calculations of binomial random variable.

-   `bin_choose()` takes two arguments: **k** and **n**, to calculate the number of combinations in which *k* successes can occur in *n* trials.

-   `bin_probability()` takes three arguments: **success** (can be a vector), **trials**, and **prob** to calculate the probability of binomial distribution.

-   `bin_distribution()` takes two arguments: **trials**, and **prob** and returns a data.frame with two classes: **c("bindis", "data.frame")**, *sucesses* in the first column, *probability* in the second column.
-   `plot()` method for a `"bindis"` object.

-   `bin_cumulative()` takes two arguments: **trials**, and **prob** and returns a data.frame with two classes: **c("bindcum", "data.frame")**, *sucesses* in the first column, *probability* in the second column and **cumulative** in the third column.
-   `plot()` method for a `"bincum"` object.

-   `bin_variable()` takes two arguments: **trials**, and **prob** and returns an object of class `"binvar"`.
-   `print()` method for a `"binvar"` object.
-   `summary()` method for a `"binvar"` object.
-   `print.summary()` method for a `"binvar"` object.

-   `bin_mean()`, `bin_variance()`, `bin_mode()`, `bin_skewness()`, `bin_kurtosis()` all take in two arguments: trials and prob and return the corresponding measures of mean, variance, mode, skewness, kuttosis of the binomial random variable.

Motivation
----------

This package has been developed to do some calculations of binomial random variable and define some special print, plot, and summary methods.

Installation
------------

Install the development version from GitHub via the package `"devtools"`:

``` r
# development version from GitHub:
#install.packages("devtools") 
# install "binomial" (without vignettes)
devtools::install_github("Agatemei/binomial")
# install "binomial" (with vignettes)
devtools::install_github("Agatemei/binomial", build_vignettes = TRUE)
```

Usage
-----

``` r
library(binomial)

# bin_choose()
bin_choose(n = 5, k = 2)
bin_choose(5, 0) 
bin_choose(5, 1:3)


# bin_probability()

# probability of getting 2 successes in 5 trials
# (assuming prob of success = 0.5)
bin_probability(success = 2, trials = 5, prob = 0.5)
# probabilities of getting 2 or less successes in 5 trials 
# (assuming prob of success = 0.5)
bin_probability(success = 0:2, trials = 5, prob = 0.5)
# 55 heads in 100 tosses of a loaded coin with 45% chance of heads
bin_probability(success = 55, trials = 100, prob = 0.45)


# bin_distribution()

# binomial probability distribution
bin_distribution(trials = 5, prob = 0.5)
# plotting binomial probability distribution
dis1 <- bin_distribution(trials = 5, prob = 0.5) 
plot(dis1)
# binomial cumulative distribution
bin_cumulative(trials = 5, prob = 0.5)
# plotting binomial cumulative distribution
dis2 <- bin_cumulative(trials = 5, prob = 0.5)
plot(dis2)


# bin_variable()

bin1 <- bin_variable(trials = 10, p = 0.3) 
bin1

binsum1 <- summary(bin1)
binsum1


# functions of measures

bin_mean(10, 0.3)
bin_variance(10, 0.3)
bin_mode(10, 0.3)
bin_skewness(10, 0.3)
bin_kurtosis(10, 0.3)
```
