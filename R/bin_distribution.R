#' @title bin_distribution
#' @description calculates the probabilities of different number of successes occuring in fixed number of trials
#' @param trials number of trials
#' @param prob value of head probability
#' @return a data frame with the probability distribution: sucesses in the first column, probability in the second column
#' @export
#' @examples
#'
#' # binomial probability distribution
#' bin_distribution(trials = 5, prob = 0.5)
#'
bin_distribution <- function(trials, prob) {
  success <- seq(0, trials, 1)
  probability <- bin_probability(success = success, trials = trials, prob = prob)
  bin_dist <- data.frame(success = success, probability = probability)
  class(bin_dist) <- c("bindis", "data.frame")
  return(bin_dist)
}


#' @export
plot.bindis <- function(bindis) {
  dist <- bindis$probability
  names(dist) <- bindis$success
  barplot(dist, xlab = "successes", ylab = "probability", yaxt = "n")
  axis(side = 2, las = 2)
}
