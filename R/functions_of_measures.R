#' @title bin_mean
#' @description calculates the mean of binomial random variable
#' @param trials number of trials
#' @param prob value of head probability
#' @return computed mean value
#' @export
#' @examples
#'
#' bin_mean(10 ,0.3)
#'
bin_mean <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  return(aux_mean(trials, prob))
}


#' @title bin_variance
#' @description calculates the variance of binomial random variable
#' @param trials number of trials
#' @param prob value of head probability
#' @return computed variance value
#' @export
#' @examples
#'
#' bin_variance(10 ,0.3)
#'
bin_variance <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  return(aux_variance(trials, prob))
}


#' @title bin_mode
#' @description calculates the mode of binomial random variable
#' @param trials number of trials
#' @param prob value of head probability
#' @return computed mode value
#' @export
#' @examples
#'
#' bin_mode(10 ,0.3)
#'
bin_mode <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  return(aux_mode(trials, prob))
}


#' @title bin_skewness
#' @description calculates the skewness of binomial random variable
#' @param trials number of trials
#' @param prob value of head probability
#' @return computed skewness value
#' @export
#' @examples
#'
#' bin_skewness(10 ,0.3)
#'
bin_skewness <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  return(aux_skewness(trials, prob))
}


#' @title bin_kurtosis
#' @description calculates the kurtosis of binomial random variable
#' @param trials number of trials
#' @param prob value of head probability
#' @return computed kurtosis value
#' @export
#' @examples
#'
#' bin_kurtosis(10 ,0.3)
#'
bin_kurtosis <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  return(aux_kurtosis(trials, prob))
}
