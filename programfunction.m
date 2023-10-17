data = 42;
comment = 'gg';
printwithcomments(data, comment);


function printwithcomments(data, comment)

    % data: данные для вывода
    % comment: комментарий

    % Используем функцию sprintf для форматированного вывода
    formatted_str = sprintf('%s: %s', comment, num2str(data));

    % Выводим результат
    disp(formatted_str);
end


