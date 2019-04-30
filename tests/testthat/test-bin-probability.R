context("check function bin_probability()")

test_that("check success, trials and prob", {
  expect_error(bin_probability(-1, 5, 0.5), "success cannot be less than zero")
  expect_error(bin_probability(6, 5, 0.5), "success cannot be greater than trials")
  expect_error(bin_probability(3, 4, -0.1), "probability values must be between 0 and 1")
})

test_that("bin_probability calculates the corresponding probability of binomial variable", {
  expect_equal(bin_probability(success = 2, trials = 5, prob = 0.5), 0.3125)
  expect_length(bin_probability(success = 0:2, trials = 5, prob = 0.5), 3)
  expect_equal(bin_probability(success = 0:2, trials = 5, prob = 0.5), c(0.03125, 0.15625, 0.31250))
  expect_equal(bin_probability(success = 55, trials = 100, prob = 0.45), 0.01075277)
})
