optimal = false;         
max_attempts = 100000;      


while ~optimal
    c = randi([-10, 10], 1, 6);   % вектов коэфтов целевой функции        
    A = randi([-10, 10], 7, 6);   % матрица коэфтов для неравенств A*x <=b        
    b = randi([1, 10], 7, 1);     % вектор правых частей нерав-в        
    Aeq = randi([-10, 10], 5, 6); % матрица коэфтов для равенств -Aeq*x = beq            
    beq = randi([1, 10], 5, 1);   % вектор правых частей рав-в       
    lb = zeros(6, 1);             % нижние границы переменных       
    ub = [];                      % вектор верхних значений переменных        
    

    [x, fval, exitflag] = linprog(c, A, b, Aeq, beq, lb, ub);

    if exitflag == 1
        optimal = true;                   
        break;                        
    elseif exitflag == -2
        disp('Оптимизация не сошлась. Задача неограниченна.');
        
    else
        disp(['Попытка ', num2str(attempt), ': Повторная оптимизация...']);
    end
end


if optimal
    disp('Коэффициенты:');
    disp(c);
    disp('Матрица A:');
    disp(A);
    disp('Вектор b:');
    disp(b);
    disp('Матрица Aeq:');
    disp(Aeq);
    disp('Вектор beq:');
    disp(beq);
    disp('Результат оптимизации:');
    disp(x);
    disp('Значение целевой функции:');
    disp(fval);
    disp('Код завершения:');
    disp(exitflag);
else
    disp('Достигнуто максимальное число попыток. Проверьте вашу задачу оптимизации.');
end