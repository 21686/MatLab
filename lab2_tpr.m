a = input("Введите значение нечеткого числа ");
power_g = input("Введите степень нечеткости гауссовой функции ");

lim = 50;
num = linspace(-lim, lim, 100);
s = "Предельное значение ФП " + lim;

gauss = exp(-(num-a).^2 / (power_g^2));
plot(num, gauss);
title("Функция Гаусса");