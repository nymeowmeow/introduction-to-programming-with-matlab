function s = year2016(m)
    if ~isscalar(m) || m < 1 || m > 12 || fix(m) ~= m,
        s = [];
    else
        days = 31;
        if m == 2,
            days = 29;
        elseif m == 4 || m == 6 || m == 9 || m == 11
            days = 30;
        end
        for i=1:days,
            d = datetime(2016, m, i);
            monthname = month(d, 'name');
            [dummy, weekdate] = weekday(d);
            s(i) = struct( 'month', monthname, 'date', i, 'day', weekdate);
        end
    end
end