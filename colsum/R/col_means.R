col_means <- function(df) {
  df %>% purrr::keep(is.numeric) %>%
    purrr::map_dfc(mean, na.rm = TRUE)
}
