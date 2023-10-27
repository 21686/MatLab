T1 = 'Выполнить действия для L1';
T2 = 'Выполнить действия для L2';
T3 = 'Выход';
T4 = 'Циклическая';
T5 = 'Программа-функция';
T6 = 'Разветвленная';
T7 = 'Замкнутая';
T8 = 'Гауссова функция';
T9 = 'Колокольная функция';

while 1
    upr = menu('Выберите действие:', T1, T2, T3);

    switch upr
        case 1
            disp('Открыть файлы лабораторной работы №1');
            l1_menu = menu('Выберите файл из ЛР1:', T4, T5, T6, T7);
            switch l1_menu
                case 1
                    disp('Циклическая');
                    run("lab2_tpr.m");
                case 2
                    disp('Программа-функция');
                    run("lab2_tpr1.m");
                case 3
                    disp('Разветвленная');
                    run("lab2_tpr1.m");
                case 4
                    disp('Замкнутая');
                    run("lab2_tpr1.m");
                case 5
                    disp('Вызов из меню ЛР2.');
                    break
            end

        case 2
            disp('Открыть файлы лабораторной работы №2');
            l2_menu = menu('Выберите файл из ЛР2:', T8, T9);
            switch l2_menu
                case 1
                    disp('Гауссова функция');
                    x= -50:50;
                    for i = 1:3 
                        for j = 1:3
                            q=[-5,0,10];
                            b=[5,8,9];
                            a=q(i);
                            sigmaG=b(j);
                            func = gaussMF(x, a, sigmaG);
                            hold on;
                            plot(x, func); 
                            xlabel('x');
                            ylabel('func');
                            title('Гауссова функция');
                            legend('Гауссова');
                        end
                    end
                case 2
                    disp('Колокольная функция');
                    x= -50:50;
                    for i = 1:3 
                        for j = 1:3
                            q=[-5,0,10];
                            b=[0.05,0.08,0.09];
                            a=q(i);
                            sigmaG=b(j);
                            func = bellMF(x, a, sigmaG);
                            hold on;
                            plot(x, func); 
                            xlabel('x');
                            ylabel('func');
                            title('Колокольная функция');
                            legend('Колокольная');
                        end
                    end
                case 3
                    disp('Вызов из меню ЛР2.');
                    break
            end
        case 3
            disp('Программа завершена.');
            return
    end
end
