function value = huge_add(x1, x2)
    if ~ischar(x1) || ~ischar(x2)
        value = -1;
        return;
    end
    x1len = length(x1);
    x2len = length(x2);
    if (x1len < x2len)
        value = addstr(x1, x2);
    else
        value = addstr(x2, x1);
    end
end

function value = addstr(x1, x2)
    carry = 0;
    j = length(x1);
    v = []
    for i=length(x2):-1:1
         if j>=1
             if ~ismember(x2(i), '0':'9') || ~ismember(x1(j), '0':'9')
                 value = -1;
                 return;
             end
             vv = str2num(x2(i)) + str2num(x1(j)) + carry;
             j = j-1;
         else
             if ~ismember(x2(i), '0':'9')
                 value = -1;
                 return
             end
             vv = str2num(x2(i)) + carry;
         end
         if vv >= 10
             v1 = num2str(vv);
             v = [v1(2), v];
             carry = 1;
         else
             v = [ num2str(vv), v];
             carry = 0;
         end;
    end
    if carry == 1
        v = [ num2str(carry), v]
    end
    value = v;
end