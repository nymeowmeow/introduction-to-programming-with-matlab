function s = circular_primes(N)
    s = 0;
    for i=2:N-1,
        strn = num2str(i);
        v = zeros(1, length(strn));
        v(1) = i;
        last = strn;
        for j=2:length(strn),
            last = circshift(last, 1, 2);
            v(j) = str2num(last);
        end
        if all(isprime(v))
            s = s+1;
        end
    end
end