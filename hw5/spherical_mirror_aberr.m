function mbd = spherical_mirror_aberr(fn, D)
    delta_x = 0.01;
    x = 0:delta_x:D/2;
    %mbd = 0;
    %for i=1:length(x),
    %    theta = asin(x(i)*0.001/(2*fn));
    %    tan_d = tan(2*theta);
    %    cos_d = (1/cos(theta)-1);
    %    d = 2*fn*tan_d*cos_d;
    %    mbd = mbd + (8*delta_x*0.001/(D^2*0.001*0.001))*(x(i)*0.001*d);
    %end
    f = fn*D*0.001;
    theta = asin(x*0.001/(2*f));
    tan_d = tan(2*theta);
    cos_d = (1./cos(theta) - 1);
    d = 2*f*tan_d.*cos_d;
    mbd = (8*delta_x*0.001/(D*0.001)^2)*(x*d');
end