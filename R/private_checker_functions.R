# Private Checker Functions

# check_prob
# test if an input prob is a valid probability value (i.e. 0 ≤ p ≤ 1)
check_prob <- function(prob) {
  if (!is.numeric(prob)) {
    stop("probability must be a numeric vector")
  }
  if (any(prob < 0) | any(prob > 1)) {
    stop("probability values must be between 0 and 1")
  }
  TRUE
}

# check_trials
# test if an input trials is a valid value for number of trials (i.e. n is a non-negative integer)
check_trials <- function(trials) {
  if (trials != round(trials)) {
    stop("trials must be an integer")
  }
  if (trials <  0) {
    stop("trials must be non-negative")
  }
  TRUE
}

# check_success
# test if an input success is a valid value for number of successes (i.e. 0 ≤ k ≤ n)
check_success <- function(success, trials) {
  check_trials(trials)
  if (any(success != round(success))) {
    stop("success must be an integer")
  }
  if (any(success < 0)) {
    stop("success cannot be less than zero")
  }
  if (any(success > trials)) {
    stop("success cannot be greater than trials")
  }
  TRUE
}
