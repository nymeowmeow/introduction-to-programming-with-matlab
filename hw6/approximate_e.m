function [value, k] = approximate_e(delta)
    target = exp(1);
    value = 1;
    k = 1;
    while (target > value && (target - value) > delta)
        value = value + 1.0/prod(1:k);
        k = k+1;
    end
    k = k-1;
end