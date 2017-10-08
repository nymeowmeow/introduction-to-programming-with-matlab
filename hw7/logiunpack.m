function M = logiunpack(v)
    [row, col] = size(v);
    M = false(col, col);
    for i=1:col,
        vv = v{i};
        for j=1:length(vv)
            M(i, vv(j)) = true;
        end
    end
end