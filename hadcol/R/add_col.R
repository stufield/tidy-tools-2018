#' Add a colum to a data frame
#'
#' Similar to cbind, but allows you to specify the positoin.
#' Will replace existing variable with the same name if present.
#'
#' @param x A data frame.
#' @param name Name of variabl to create. If variable of that name
#' already exists.
#' @param value Values to insert.
#' @param where position to insert. Use 1 to insert on LHS,
#' or -1 to insert on RHS.
#' @export
#' @examples
#' df <- data.frame(x = 1:5)
#' add_col(df, "y", runif(5))
#' add_col(df, "y", runif(5), where = 1)
#' add_col(df, "x", 5:1)
add_col <- function(x, name, value, where = ncol(x) + 1) {
  check_where(where)
  if ( !is.null(value) && nrow(x) != length(value))
    stop("Lengths are unequal ... check the length of 'value'",
         call. = FALSE)
  if ( name %in% names(x) ) {
    x[[name]] <- value
    x
  } else {
    y <- data.frame(value) %>%
      magrittr::set_names(name)
    add_cols(x, y, where)
  }
}
