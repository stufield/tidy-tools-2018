context("test-check_where.R")

test_that("error messages are tripped", {
  expect_error(check_where(0), "cannot")
  expect_error(check_where(NA), "cannot")
  expect_error(check_where("a"), "character")
  expect_error(check_where(1:10), "length")
  expect_error(check_where(3.5), "integer")
})
