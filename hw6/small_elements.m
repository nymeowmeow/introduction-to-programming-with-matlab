function value = small_elements(X)
    [row, col] = size(X);
    value = [];
    index = 1;
    for j=1:col,
        for i=1:row,
            if X(i,j) < i*j,
                value(index, 1) = i;
                value(index, 2) = j;
                index = index+1;
            end
        end
    end
end