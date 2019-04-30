#' @title bin_cumulative
#' @description calculates the binomial probabilities and cumulative probabilities of different number of successes occuring in fixed number of trials
#' @param trials number of trials
#' @param prob value of head probability
#' @return a data frame with both the probability distribution and the cumulative probabilities: sucesses in the first column, probability in the second column, and cumulative in the third column
#' @export
#' @examples
#'
#' # binomial cumulative distribution
#' bin_cumulative(trials = 5, prob = 0.5)
#'
#' # plotting binomial cumulative distribution
#' dis2 <- bin_cumulative(trials = 5, prob = 0.5)
#' plot(dis2)
#'
bin_cumulative <- function(trials, prob) {
  dist <- bin_distribution(trials, prob)
  cumulative <- cumsum(dist$probability)
  bin_cum <- data.frame(dist, cumulative = cumulative)
  class(bin_cum) <- c("bincum", "data.frame")
  return(bin_cum)
}


#' @export
plot.bincum <- function(bincum) {
  plot(x = bincum$success, y = bincum$cumulative, xlab = "successes", type = "o", yaxt = "n")
  axis(side = 2, las = 2)
}
