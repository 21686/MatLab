T1 = 'Ввод значений';
T2 = 'Расчёт';
T3 = 'Вывод графиков';
T4 = 'Выход';

while 1
    upr = menu('Выберите действие:', T1, T2, T3, T4);

    switch upr
        case 1
            disp('Ввод');

        case 2
            disp('Расчёт');
        
        case 3
            disp('Графики');

        case 4
            disp('Программа завершена.');
            break
    end
end
