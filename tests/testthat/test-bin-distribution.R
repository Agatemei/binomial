context("check function bin_distribution()")

test_that("returned output should be data.frame with another class of 'bindis'", {
  dist <- bin_distribution(trials = 5, prob = 0.5)
  expect_is(dist, c("bindis", "data.frame"))
  expect_equal(names(dist), c("success", "probability"))
  expect_equal(dist$success, seq(0, 5, 1))
  expect_equal(dist$probability, c(0.03125, 0.15625, 0.31250, 0.31250, 0.15625, 0.03125))
})
