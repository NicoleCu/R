
# В этой задче поработаем со встроенными данными mtcars. 
# В датафрэйме mtcars создайте новую колонку (переменную) под названием even_gear, в которой будут единицы, если значение переменной (gear) четное, и нули если количество нечетное.   

data(mtcars)
newcol <- data.frame(even_gear = 1 - (mtcars$gear %% 2))
mtcars <- cbind(mtcars, newcol)
# другой вариант mtcars$even_gear <- (mtcars$gear+1) %% 2 
View(mtcars)