function res = odd_rms(nn)
    x = (1:2:2*nn).^2;
    res = sqrt(sum(x)/length(x));