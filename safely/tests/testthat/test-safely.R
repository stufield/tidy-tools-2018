context("test-safely.R")

test_that("can only supply error or result", {
  expect_error(new_safely(1, 2), "must be NULL")
})

test_that("it's ok for both to be null", {
  expect_error(new_safely(NULL, NULL), NA)
})

test_that("result and error are capture", {
 s1 <- new_safely(result = 1)
 s2 <- new_safely(error = 1)

 expect_s3_class(s1, "safely")
 expect_equal(s1$result, 1)
 expect_equal(s1$error, NULL)

 expect_s3_class(s2, "safely")
 expect_equal(s2$result, NULL)
 expect_equal(s2$error, 1)
})
