

check_where <- function(w) {
  if (length(w) > 1)
    stop("The `where` value must be of length `1`", call. = FALSE)
  else if ( is.na(w) )
    stop("The `where` value cannot be `NA`", call. = FALSE)
  else if (w == 0)
    stop("The `where` value cannot be `0`", call. = FALSE)
  else if (is.character(w))
    stop("The `where` value cannot be character class", call. = FALSE)
  else if (w / floor(w) != 1)
    stop("The `where` value must be a positive integer", call. = FALSE)
}
