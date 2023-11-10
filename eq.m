
optimal = false;         
max_attempts = 100000;      


while ~optimal
    c = randi([-10, 10], 1, 6);          
    Aeq = randi([-10, 10], 5, 6);        
    beq = randi([1, 10], 5, 1);          
    lb = zeros(6, 1);                    
    ub = [];                             
    
    
    [x, fval, exitflag] = linprog(c, [], [], Aeq, beq, lb, ub);

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
    disp('Матрица Aeq:');
    disp(Aeq);
    disp('Вектор beq:');
    disp(beq);
    disp('Результат оптимизации:');
    disp(x);
    disp('Значение целевой функции:');
    disp(fval);
else
    disp('Достигнуто максимальное число попыток');
end