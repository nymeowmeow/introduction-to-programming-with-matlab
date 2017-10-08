function percentage = zero_stat(M)
    [row, col] = size(M);
    percentage = (1- sum(M(:))/(row*col))*100.0;
