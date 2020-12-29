
# Shortcut:                       Action:
Shift + Option + K                Shortcuts screen
CMD + Shift + C                   Comment chunks of code
Alt + drag                        Multi-line editing
Alt + -                           Assignment arrow
CMD + Shift + M                   Add magrittr forward pipe
Shift + CMD + L                   Load all
Shift + CMD + T                   Run unit tests
Shift + CMD + E                   Run R CMD checks
Control + .                       Go to file/function within project
Fn + Control + Shift + F10        Restart R


# usethis package
usethis::create_package("~/Desktop/tidypackage")
usethis::edit_r_profile()    # edit Rprofile
usethis::use_r()             # create R file in R/ or edit file


# unit tests testthat
http://testthat.r-lib.org/reference/index.html
testthat::expect_named()
test_that("this is how you're supposed to write this part")    # should be written as a sentence
expect_error(function_that_makes_error, "some text from the error message")  # make sure your error is what you think

# Test driven development
stop() calls should have `function` and 'string' if its a character.

# Use purrr::safely() instead of tryCatch()

# Tree
use lobstr::ast()
use lobstr::obj_size()
