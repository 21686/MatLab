% Разветвленная
% Оператор if с тремя условиями
x = input('Введите число: ');

if x < 0
    disp('Число отрицательное');
elseif x == 0
    disp('Число равно нулю');
else
    disp('Число положительное');
end

% Оператор switch с тремя выборами
choice = input('Выберите опцию (1, 2 или 3): ');

switch choice
    case 1
        disp('Вы выбрали опцию 1');
    case 2
        disp('Вы выбрали опцию 2');
    case 3
        disp('Вы выбрали опцию 3');
    otherwise
        disp('Неверный выбор');
end