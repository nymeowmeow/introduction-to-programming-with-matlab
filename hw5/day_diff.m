function days = day_diff(month1, day1, month2, day2)
    if (~valid_date(month1, day1)) || (~valid_date(month2, day2)),
        days =  -1;
        return;
    end
    days = daysinyear(month1, day1) - daysinyear(month2, day2);
    if days < 0,
        days = -1*days
    end
end

function days = daysinyear(month, day)
    if (month == 1)
        days = day;
    elseif month == 2
        days = day + 31;
    elseif month == 3
        days = day + 31+28;
    elseif month == 4
        days = day + 31 + 28 + 31;
    elseif month == 5
        days = day + 31 + 28 + 31 + 30;
    elseif month == 6
        days = day + 31 + 28 + 31 + 30 + 31;
    elseif month == 7
        days = day + 31 + 28 + 31 + 30 + 31 + 30;
    elseif month == 8
        days = day + 31 + 28 + 31 + 30 + 31 + 30 + 31;
    elseif month == 9
        days = day + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31;
    elseif month == 10
        days =  day + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30;
    elseif month == 11
        days = day + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31;
    else
        days = day + 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30;
    end
end

function res = valid_date(month, day)
    res = 1;
    if (~isscalar(month) || ~isscalar(day) ||month ~= fix(month) || day ~= fix(day) || month <= 0 || ...
            day <= 0 || month > 12 || day > 31)
        res = 0;
    else
        if (month == 1 || month == 3 || month == 5|| month == 7 || month == 8 || month == 10 ...
                || month == 12)
            if day > 31,
                res = 0;
            end
        elseif month == 2
            if (day > 28)
                res = 0;
            end
        else
            if (day > 30),
                res = 0;
            end
        end
    end
end