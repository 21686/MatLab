a = input("Введите значение нечеткого числа ");
power_k = input("Введите степень нечеткости колокольной функции ");

lim = 50;
num = linspace(-lim, lim, 100);
s = "Предельное значение ФП " + lim;

kolokol = (1 ./ (1 + power_k^2 * (num - a).^2));
plot(num, kolokol);
title("Колокольная функция");