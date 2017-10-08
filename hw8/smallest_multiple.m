function value = smallest_multiple(N)
    value = uint64(1);
    for i=2:N
        try
            value = lcm(i, value);
        catch
            value = uint64(0);
            return;
        end
        if value >= intmax('uint64')
            value = uint64(0);
        end
    end
    value = uint64(value);
end