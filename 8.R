# возвращает матрицу, где 1 строка эл-ты вектора по возрастанию, 2 строка количество повторов

count_elements <- function(x) {m <- matrix(2*(length(unique(x))), 2, length(unique(x)))
  m[1,] <- sort(unique(x)) 
  for (i in 1:length(unique(x))) {m[2, i] <- length(which(x == min(x)))
  u <- c(which(x == min(x)))
  x <- x[-u]}
  print(m)}
#l <- c(0,0,0,9,99)
#count_elements(l)
