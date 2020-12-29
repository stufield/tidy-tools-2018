
df <- data.frame(
  g = rep(c("a", "b", "c"), c(3, 2, 2)),
  b = runif(7),
  a = runif(7),
  c = runif(7)
)

my_sum <- function(x, gr, summary_var) {
  group_vars  <- rlang::enquo(gr)
  summary_var <- enquo(summary_var)
  x %>%
    group_by(!!!group_vars) %>%
    summarise(mean = mean(!!summary_var))
}

my_sum(df, g, c(a, b))

