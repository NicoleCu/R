# генератор случайных списков 

gen_list <- function(n_elem, max_len, seed = 110) {
  set.seed(seed)
  len <- sample(1:max_len, n_elem)
  lapply(1:n_elem, function(i) rnorm(len[i]))
}