
# Ваша задача создать новый dataframe под названием mini_mtcars, в котором будут сохранены только третья, 
# седьмая, десятая, двенадцатая и последняя строчка датафрейма mtcars.

data(mtcars)
my_data <- mtcars
mini_mtcars <- rbind(my_data[3,], my_data[7,], my_data[10,], my_data[12,], my_data[nrow(mtcars),])
# mini_mtcars <- mtcars[c(3, 7, 10, 12, nrow(mtcars)), ]  более короткий пример
View(mini_mtcars)

