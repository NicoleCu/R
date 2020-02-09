
# Для встроенных в R данных AirPassengers рассчитайте скользящее среднее с интервалом сглаживания равным 10. 
# Напечатайте получившийся результат (первым значением в выводе должно быть среднее для элементов 1:10, во втором значении - 
# среднее для элементов 2:11 и т.д., в последнем  - среднее для элементов 135 :144)
# Все полученные значения средних сохраните в переменную moving_average.

data("AirPassengers")
ap <- as.vector(AirPassengers)
moving_average <- vector()
for (i in 1:(length(ap)-9)){
  moving_average <- c(moving_average, mean(ap[i:(i+9)]))
}
length(moving_average)
moving_average

# Можно решить и без цикла при помощи разностей кумулятивных сумм!    

n <- 10    
d <- AirPassengers    
cx <- c(0, cumsum(d))    
moving_average <- (cx[(n + 1):length(cx)] - cx[1:(length(cx) - n)]) / n