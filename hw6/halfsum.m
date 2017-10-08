function value = halfsum(A)
    value = 0;
    [row, col] = size(A);
    for i=row:-1:1,
       for j=row-i+1:col,
           value = value + A(i, j);
       end
    end
end