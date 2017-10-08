function value = spiral_diag_sum(N)
    value = 1;
    spacing = 2;
    current = 1;
    for i=2:N/2+1,
        for j=1:4,
            current = current + spacing;
            value = value + current;
            disp(current);
        end
        spacing = spacing + 2;
    end
end