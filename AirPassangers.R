
# И так ваша задача создать переменную good_months и 
# сохранить в нее число пассажиров только в тех месяцах, в которых это число больше, чем показатель в предыдущем месяце. 

data("AirPassengers")
ap <- as.vector(AirPassengers)
good_months <- vector()
for (i in 2:144) { if (ap[i] > ap[i-1]) {
  good_months <- c(good_months, ap[i])
                 }
} 
print(good_months)
