function p = poly_val(c0, c, x)
    if isempty(c)
        p = c0;
        return;
    end
    if isscalar(c)
        p = c0 + c*x;
        return;
    end
    [row, col] = size(c);
    if row ~= 1,
        c = c'
    end
    p = c0;
    t = 1:length(c);
    y = ones(size(c))*x;
    z = y.^t;
    p = p + c*z';
end