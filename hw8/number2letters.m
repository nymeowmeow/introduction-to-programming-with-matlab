function value = number2letters(N)
    strn = num2str(N);
    if N >= 100,
        value = doubledigit(mod(N, 100)) + singledigit(strn(1)) + 7;
    else
        value = doubledigit(N);
    end
end

function value = doubledigit(N)
    if (N < 10)
        value = singledigit(num2str(N));
    elseif N <= 19
        value = specialdigit(N);
    else
        strn = num2str(N);
        value = tenthdigit(strn(1)) + singledigit(strn(2));
    end
end

function value = tenthdigit(strn)
    value = 0;
    if strn == '2'
        value = 6;
    elseif strn == '3'
        value = 6;
    elseif strn == '4'
        value = 5;
    elseif strn == '5'
        value = 5;
    elseif strn == '6'
        value = 5;
    elseif strn == '7'
        value = 7;
    elseif strn == '8'
        value = 6;
    elseif strn == '9'
        value = 6;
    end
end

function value = specialdigit(N)
    value = 0;
    if N == 10
        value = 3;
    elseif N == 11
        value = 6;
    elseif N == 12
        value = 6;
    elseif N == 13
        value = 8;
    elseif N == 14
        value = 8;
    elseif N == 15
        value = 7;
    elseif N == 16
        value = 7;
    elseif N == 17
        value = 9;
    elseif N == 18
        value = 8;
    elseif N == 19
        value = 8;
    end
end

function value = singledigit(N)
    value = 0;
    if N == '1'
        value = 3;
    elseif N == '2'
        value = 3;       
    elseif N == '3'
        value = 5;
    elseif N == '4'
        value = 4;
    elseif N == '5'
        value = 4;
    elseif N == '6'
        value = 3;
    elseif N == '7'
        value = 5;
    elseif N == '8'
        value = 5;
    elseif N == '9'
        value = 4;
    end
end