function res = exp_average(in , b)
    persistent result;
    persistent bvalue;
    if nargin == 2
        res = in;
        result = in;
        bvalue = b;
        return;
    end
    if isempty(result)
        res = in;
        result = in;
        return
    end
    if isempty(bvalue) && nargin == 1
        bvalue = 0.1;
    end
    res = bvalue*in + (1-bvalue)*result;
    result = res;
end