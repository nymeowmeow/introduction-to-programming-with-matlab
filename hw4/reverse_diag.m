function M = reverse_diag(n)
    M = zeros(n, n);
    M(n:n-1:n*n-1) = 1;