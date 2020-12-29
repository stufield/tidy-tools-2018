


get_group <- function(x) {

  stopifnot(dplyr::group_vars(x) == "Dilution")
  idx <- dplyr::group_indices(x)
  labels <- group_labels(x)
  labels[idx] %>%
    as.numeric() %>%
    as.list() %>%
    magrittr::set_names(x$AptName)

}
