function result = maxproduct(A, n)
    [row, col] = size(A);
    maxvalue = -inf;
    result = [];
    if row < n && col < n
        return;
    end
    for i=1:row
        for j=1:col
            if (i+n-1 <= row)
                value = prod(A(i:i+n-1, j));
                if value > maxvalue
                    maxvalue = value;
                    result = zeros(n, 2);
                    for k=1:n
                        result(k, 1) = i+k-1;
                        result(k, 2) = j;
                    end
                end
            end
            if (j+n-1 <= col)
                value = prod(A(i, j:j+n-1));
                if value > maxvalue
                    maxvalue = value;
                    result = zeros(n, 2);
                    for k=1:n
                        result(k, 1) = i;
                        result(k, 2) = j+k-1;
                    end
                end
            end
            if (i+n-1 <= row) && (j+n-1 <= col)
                value = 1;
                for k=1:n
                    value = A(i+k-1, j+k-1)*value;
                end
                if value > maxvalue
                    maxvalue = value;
                    result = zeros(n, 2);
                    for k=1:n
                        result(k, 1) = i+k-1;
                        result(k, 2) = j+k-1;
                    end
                end
            end
            if (i+ n - 1 <= row) && (j-n+1 >= 1)
                value = 1;
                for k=1:n
                    value = A(i+k-1, j-k+1)*value;
                end
                if value > maxvalue
                    maxvalue = value;
                    result = zeros(n, 2);
                    for k=1:n
                        result(k, 1) = i+k-1;
                        result(k, 2) = j-k+1;
                    end
                end
            end
        end
    end
end