context("check function bin_variable()")

test_that("returns an object of class 'binvar'", {
  bin1 <- bin_variable(trials = 10, p = 0.3)
  expect_is(bin1, "binvar")
  expect_error(bin_variable(trials = -1, p = 0.3), "trials must be non-negative")
  expect_error(bin_variable(trials = 10, p = 1.3), "probability values must be between 0 and 1")
})

test_that("summary method returns an object of class 'summary.binvar'", {
  bin1 <- bin_variable(trials = 10, p = 0.3)
  binsum1 <- summary(bin1)
  expect_is(binsum1, "summary.binvar")
})
