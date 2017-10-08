function wave = triangle_wave(N)
    delta = 4*pi/1000;
    t = 0:delta:4*pi;
    wave = zeros(size(t));
    for i=1:length(t),
        value = 0;
        for k=0:N,
            value = value + (-1)^k*sin((2*k+1)*t(i))/(2*k+1)^2;
        end
        wave(i) = value;
    end
end