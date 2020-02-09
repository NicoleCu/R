m <- 3
n <- 7
get_fractions <- function(m, n) {
  i <- 1:m
  j <- 0:n
  q <- c(i/m)
  y <- c(j/n)
  return(unique(sort(c(q, y), TRUE)))
}
l <- get_fractions(m, n)
