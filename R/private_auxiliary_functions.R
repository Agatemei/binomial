# Private Auxiliary Functions

# aux_mean
# computes the mean of binomial distribution
aux_mean <- function(trials, prob) {
  return(trials * prob)
}

# aux_variance
# computes the variance of binomial distribution
aux_variance <- function(trials, prob) {
  return(trials * prob * (1 - prob))
}

# aux_mode
# computes the mode of binomial distribution
aux_mode <- function(trials, prob) {
  m = floor(trials * prob + prob)
  if (prob == 0.5 & trials %% 2 == 1) {
    return(c(m - 1, m))
  }
  return(m)
}

# aux_skewness
# computes the variance of binomial distribution
aux_skewness <- function(trials, prob) {
  return((1 - 2 * prob) / sqrt(trials * prob * (1 - prob)))
}

# aux_kurtosis
# computes the variance of binomial distribution
aux_kurtosis <- function(trials, prob) {
  return((1 - 6 * prob * (1 - prob)) / (trials * prob * (1 - prob)))
}
