context("tests for checkers")

test_that("probability is a number between 0 and 1", {
  expect_error(check_prob("a"), "probability must be a numeric vector")
  expect_error(check_prob(NA), "probability must be a numeric vector")
  expect_error(check_prob(1.1), "probability values must be between 0 and 1")
  expect_error(check_prob(-0.1), "probability values must be between 0 and 1")
  expect_true(check_prob(0.5))
})

test_that("number of trials is a non-negative integer", {
  expect_error(check_trials(1.5), "trials must be an integer")
  expect_error(check_trials(-1), "trials must be non-negative")
  expect_true(check_trials(3))
})

test_that("number of successes is an non-negative integer less than or equal to the number of trials", {
  expect_error(check_success(1.5, 3), "success must be an integer")
  expect_error(check_success(-1, 3), "success cannot be less than zero")
  expect_error(check_success(5, 3), "success cannot be greater than trials")
  expect_true(check_success(1, 3))
})
