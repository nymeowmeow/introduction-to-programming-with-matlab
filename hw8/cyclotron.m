function [E, N] = cyclotron(V)
    q = 1.603e-19;
    m = 3.344*1e-27;
    B = 1.6;
    r = sqrt(m*V/(q*B*B));
    N = 1;
    pos = 0.5 - r/2.0 + 2*r;
    while (true)
        r = sqrt(r*r+2.0*m*V/(q*B*B));
        N = N+1;
        if mod(N, 2) == 0
            pos = pos - 2*r;
            if pos < 0
                break
            end
        else
            pos = pos + 2*r;
        end
    end
    E = V*N*1e-6;
end