context("test-add_cols.R")

test_that("add_cola works", {
  df1 <- data.frame(a = 1:5, b = rnorm(5))
  df2 <- data.frame(c = LETTERS[1:5], d = rnorm(5))
  expect_named(df1, c("a", "b"))
  expect_named(df2, c("c", "d"))
  expect_equal(2 * 2, 4)
  x1 <- add_cols(df1, df2, where = 1)
  x2 <- add_cols(df1, df2, where = 2)
  x3 <- add_cols(df1, df2, where = 3)
  x4 <- add_cols(df1, df2, where = 4)
  expect_named(x1, c("c", "d", "a", "b"))
  expect_named(x2, c("a", "c", "d", "b"))
  expect_named(x3, c("a", "b", "c", "d"))
  expect_named(x4, c("a", "b", "c", "d"))
  expect_equal(names(x4), names(x3))

})
