
# Примените функцию describeBy к количественным переменным данных airquality, группируя наблюдения по переменной Month.  
# Чему равен коэффициент асимметрии (skew) переменной Wind в восьмом месяце?

library(moments)
data("airquality")
x <- subset(airquality, Month==8)
str(x)  # дата фрейм, состоящий из 8го месяца
skewness(x$Wind, na.rm = TRUE)
