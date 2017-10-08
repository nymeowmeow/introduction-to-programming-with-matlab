function [maxvalue, index] = max_product(v, n)
    maxvalue = 0;
    index = -1;
    if length(v) < n,
        return;
    end
    maxvalue = -inf;
    for i=1:length(v)-n+1,
        value = 1;
        for j=i:i+n-1,
            value = value * v(j);
        end
        if (value > maxvalue)
            maxvalue = value;
            index = i;
        end
    end
end