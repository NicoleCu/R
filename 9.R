library(stringr)
avian$site_names <- factor(str_replace(avian$Site, "[:digit:]+","")) # создан фактор с названием регионов(все цифры из исходного удалены)
site_names <- unique(avian$site_names)

coverage_variables <- names(avian)[-(1:4)][c(T, F)]
avian$total_coverage <- rowSums(avian[, coverage_variables])     # данные о покрытии

all_coverage <- data.frame(avian[18:19])
result_coverage <- colSums(all_coverage["site_names'[:digit:]+'", 19])
