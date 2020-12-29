context("test-add_col.R")

test_that("the add_col function works", {
  df <- data.frame(x = 1)
  expect_equal(
    add_col(df, "y", 2, where = 1),
    data.frame(y = 2, x = 1)
  )
  expect_equal(
    add_col(df, "y", 2, where = 2),
    data.frame(x = 1, y = 2)
  )
})



test_that("can replace columns", {
  df <- data.frame(x = 1)
  expect_equal(
    add_col(df, "x", 2, where = 2),
    data.frame(x = 2)
  ) })


test_that("default where is far right", {
  df <- data.frame(x = 1)
  expect_equal(
    add_col(df, "y", 2),
    data.frame(x = 1, y = 2)
  )
})


test_that("add_cols can remove columns", {
  df <- data.frame(x = 1, y = 2)
  expect_equal(
    add_col(df, "x", NULL),
    data.frame(y = 2)
  )
})


test_that("error is thrown for unequal lengths", {
  df <- data.frame(x = 1:4)
  expect_error(add_col(df, "y", 1:2))
})


test_that("error is thrown for bad where values", {
  df <- data.frame(x = 1:4)
  expect_error(add_col(df, "y", rnorm(4), where = NA))
  expect_error(add_col(df, "y", rnorm(4), where = 0))
  expect_error(add_col(df, "y", rnorm(4), where = 1:10))
  expect_error(add_col(df, "y", rnorm(4), where = "a"))
})

