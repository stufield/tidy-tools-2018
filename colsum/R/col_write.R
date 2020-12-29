col_write <- function(df, path = tempdir()) {
  files <- paste0(path, "/", names(df), ".txt")
  df %>%
    purrr::walk2(files, ~writeLines(as.character(.x), .y))
}
