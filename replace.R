
# В переменной my_vector сохранен вектор с пропущенными значениями. Вам нужно создать новый вектор fixed_vector, 
# в котором все пропущенные значения вектора my_vector будут заменены на среднее значение по имеющимся наблюдениям.
#При этом исходный вектор оставьте без изменений!

my_vector <- rnorm(30)

my_vector[sample(1:30, 10)] <- NA # на десять случайных позиций поместим NA

fixed_vector <- replace(my_vector, is.na(my_vector), mean(my_vector, na.rm = T))

View(fixed_vector)
View(my_vector)