function [o1, o2, o3] = sort3(x)
    a = x(1);
    b = x(2);
    c = x(3);
    if (a < b)
        if (a < c)
            if (b < c)
                o1 = a;
                o2 = b;
                o3 = c;
            else
                o1 = a;
                o2 = c;
                o3 = b;
            end;
        else
            o1 = c;
            o2 = a;
            o3 = b;
        end
    else
        if (a < c)
            o1 = b;
            o2 = a;
            o3 = c;
        else
            if (b < c)
                o1 = b;
                o2 = c;
                o3 = a;
            else
                o1 = c;
                o2 = b;
                o3 = a;
            end
        end
    end
end