# проверяет монотонность

is_monotone <- function(x) { all(x[-1]-x[-length(x)] <= 0) | all(x[-1]-x[-length(x)] >= 0)}