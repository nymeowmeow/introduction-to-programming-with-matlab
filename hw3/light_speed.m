function [minutes, miles] = light_speed(distance)
    minutes = distance ./ (300000*60);
    miles = distance ./ 1.609;