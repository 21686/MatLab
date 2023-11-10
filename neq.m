optimal = false;         
max_attempts = 100000000;     


while ~optimal
    c = randi([-10, 10], 1, 6);          
    A = randi([-10, 10], 7, 6);          
    b = randi([1, 10], 7, 1);            
    lb = zeros(6, 1);                    
    ub = [];                             
    
    [x, fval, exitflag] = linprog(c, A, b, [], [], lb, ub);

    if exitflag == 1
        optimal = true;                   
        break; 
    end
    if exitflag == -2
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
    disp('Результат оптимизации:');
    disp(x);
    disp('Значение целевой функции:');
    disp(fval);
else
    disp('Достигнуто максимальное число попыток.');
end