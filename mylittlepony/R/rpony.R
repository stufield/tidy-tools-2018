ponies <- c(
  "Twilight Sparkle",
  "Rainbow Dash",
  "Pinkie Pie",
  "Fluttershy",
  "Applejack",
  "Rarity"
)

rpony <- function(n) {
  sample(ponies, n, replace = TRUE)
}
