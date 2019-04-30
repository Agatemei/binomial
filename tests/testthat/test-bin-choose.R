context("check function bin_choose()")

test_that("bin_choose raises error when some arguments in k are greater than n", {
  expect_error(bin_choose(5, 4:6), "k cannot be greater than n")
})

test_that("bin_choose calculates the number of
combinations", {
  expect_equal(bin_choose(n = 5, k = 2), 10)
  expect_equal(bin_choose(5, 0), 1)
  expect_equal(bin_choose(5, 1:3), c(5, 10, 10))
})
