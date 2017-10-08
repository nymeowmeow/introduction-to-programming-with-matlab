function value = palin_product(dig, lim)
    value = lim -1;
    while (value > 0)
        if flip(num2str(value)) == num2str(value)
            min = 1;
            max = 9;
            for i=2:dig
                min = min*10;
                max = max*10+9;
            end
            for i=max:-1:min,
                for j=max:-1:min
                    if i*j == value,
                        return;
                    elseif i*j < value
                        break;
                    end
                end
            end;
        end
        value = value - 1;
    end
end