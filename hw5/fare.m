function res = fare(distance, age)
    if distance <= 1.0
        res = 2.0;
        distance = 0.0;
    else
        res = 2.0;
        distance = distance - 1.0;
    end
    if distance <= 9
        res = res + round(distance)*0.25;
        distance = 0;
    else
        distance = distance - 9.0;
        res = res + 9*0.25;
    end
    if (distance > 0)
        res = res + round(distance)*0.10;
    end
    if (age <= 18 || age >= 60)
        res = res*0.8;
    end
end