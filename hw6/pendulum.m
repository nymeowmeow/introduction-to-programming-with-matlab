function value = pendulum(l, a0)
    if (l <= 0)
        value = 0;
        return;
    end
    delta = 1e-6;
    theta = a0;
    t = 0;
    velocity = 0;
    g=9.8;
    while (theta > 0)
        velocity = velocity + delta*-g*sin(theta)/l;
        t = t + delta;
        theta = theta + delta*velocity;
    end
    value = t*4;
end