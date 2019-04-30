#' @title bin_variable
#' @description creates an object of class "binvar", which is a list with named elements trials and prob
#' @param trials number of trials
#' @param prob value of head probability
#' @return  an object of class "binvar", that is, a binomial random variable object
#' @export
#' @examples
#'
#' bin1 <- bin_variable(trials = 10, p = 0.3)
#' bin1
#'
#' binsum1 <- summary(bin1)
#' binsum1
#'
bin_variable <- function(trials, prob) {
  check_trials(trials)
  check_prob(prob)
  if (check_trials(trials) & check_prob(prob)) {
    bin <- list(
      trials = trials,
      prob = prob)
    class(bin) <- "binvar"
    bin
  }
}

#' @export
print.binvar <- function(bin) {
    cat('"Binomial variable"\n\n')
    cat('Parameters\n')
    cat('-', sprintf('number of trials: %s', bin$trials), "\n")
    cat('-', sprintf('prob of success : %s', bin$prob), "\n")
    invisible(bin)
}

#' @export
summary.binvar <- function(bin) {
  summary_bin <- list(
    trials = bin$trials,
    prob = bin$prob,
    mean = aux_mean(bin$trials, bin$prob),
    variance = aux_variance(bin$trials, bin$prob),
    mode = aux_mode(bin$trials, bin$prob),
    skewness = aux_skewness(bin$trials, bin$prob),
    kurtosis = aux_kurtosis(bin$trials, bin$prob)
  )
  class(summary_bin) <- "summary.binvar"
  summary_bin
}

#' @export
print.summary.binvar <- function(summary_bin) {
  cat('"Summary Binomial"\n\n')
  cat('Parameters\n')
  cat('-', sprintf('number of trials: %s', summary_bin$trials), "\n")
  cat('-', sprintf('prob of success : %s', summary_bin$prob), "\n\n")
  cat('Measures\n')
  cat('-', sprintf('mean    : %s', summary_bin$mean), "\n")
  cat('-', sprintf('variance: %s', summary_bin$variance), "\n")
  cat('-', sprintf('mode    : %s', summary_bin$mode), "\n")
  cat('-', sprintf('skewness: %s', summary_bin$skewness), "\n")
  cat('-', sprintf('kurtosis: %s', summary_bin$kurtosis), "\n")
  invisible(summary_bin)
}
