context("check function bin_cumulative()")

test_that("returned output should be a data.frame with another class of 'bincum'", {
  cum <- bin_cumulative(trials = 5, prob = 0.5)
  expect_is(cum, c("bincum", "data.frame"))
  expect_equal(names(cum), c("success", "probability", "cumulative"))
  expect_equal(cum$success, seq(0, 5, 1))
  expect_equal(cum$probability, c(0.03125, 0.15625, 0.31250, 0.31250, 0.15625, 0.03125))
  expect_equal(cum$cumulative, c(0.03125, 0.18750, 0.50000, 0.81250, 0.96875, 1.00000))
})
