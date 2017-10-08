function value = day_counter(year)
    value = 0;
    for m=1:12,
        dt = datetime(year, m, 1);
        d = weekday(dt);
        if d == 2,
            value = value + 1;
        end
    end
end