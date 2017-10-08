function M = logipack(A)
    [row, col] = size(A);
    M = {};
    if row > 0,
        M = cell(1, row);
        for i=1:row,
            v = [];
            for j=1:col,
                if A(i, j) == true
                    v = [v, j];
                end
            end
            M{i} = v;
        end
    end
end