context("tests for auxiliary functions")

test_that("aux_mean calculates the mean of binomial variable", {
  expect_equal(aux_mean(10, 0.3), 3)
})

test_that("aux_variable calculates the variance of binomial variable", {
  expect_equal(aux_variance(10, 0.3), 2.1)
})

test_that("aux_mode calculates the mode of binomial variable", {
  expect_equal(aux_mode(10, 0.3), 3)
  expect_equal(aux_mode(9, 0.5), c(4, 5))
})

test_that("aux_skewness calculates the skewness of binomial variable", {
  expect_true(abs(aux_skewness(10, 0.3) - 0.2760262) <= 5e-8)
})

test_that("aux_kurtosis calculates the kurtosis of binomial variable", {
  expect_true(abs(aux_kurtosis(10, 0.3) - (-0.1238095)) <= 5e-8)
})
