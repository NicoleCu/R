# При помощи функции aggregate рассчитайте стандартное отклонение переменной hp (лошадиные силы) 
# и переменной disp (вместимости двигателя) у машин с автоматической и ручной коробкой передач. 

# Полученные результаты (результаты выполнения функции aggregate) сохраните в переменную descriptions_stat.

data("mtcars")
df <- mtcars
descriptions_stat <- aggregate(cbind(hp,disp) ~ am, df, sd)
descriptions_stat
View(descriptions_stat)
