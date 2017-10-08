function value = find_zero(f, x1, x2)
    xleft = x1;
    xright = x2;
    while (1)
        left = f(xleft);
        right = f(xright);
        if (abs(left) < 1e-10)
            value = xleft;
            return
        end
        if (abs(right) < 1e-10)
            value = xright;
            return;
        end
        value = (xleft + xright)/2.0;
        y = f(value);
        if abs(y) < 1e-10
            return;
        end
        if y*left < 0
            xright = value;
        elseif y*right < 0
            xleft = value;
        end
    end
end