context("check functions of measures")

test_that("bin_mean calculates the mean", {
  expect_error(bin_mean(10, 1.5), "probability values must be between 0 and 1")
  expect_error(bin_mean(-1, 0.5), "trials must be non-negative")
  expect_equal(bin_mean(10, 0.3), 3)
})

test_that("bin_variance calculates the variance", {
  expect_error(bin_variance(10, 1.5), "probability values must be between 0 and 1")
  expect_error(bin_variance(-1, 0.5), "trials must be non-negative")
  expect_equal(bin_variance(10, 0.3), 2.1)
})

test_that("bin_mode calculates the mode", {
  expect_error(bin_mode(10, 1.5), "probability values must be between 0 and 1")
  expect_error(bin_mode(-1, 0.5), "trials must be non-negative")
  expect_equal(bin_mode(10, 0.3), 3)
})

test_that("bin_skewness calculates the skewness", {
  expect_error(bin_skewness(10, 1.5), "probability values must be between 0 and 1")
  expect_error(bin_skewness(-1, 0.5), "trials must be non-negative")
  expect_true(abs(bin_skewness(10, 0.3) - 0.2760262) <= 5e-8)
})

test_that("bin_kurtosis calculates the kurtosis", {
  expect_error(bin_kurtosis(10, 1.5), "probability values must be between 0 and 1")
  expect_error(bin_kurtosis(-1, 0.5), "trials must be non-negative")
  expect_true(abs(bin_kurtosis(10, 0.3) - (-0.1238095)) <= 5e-8)
})
