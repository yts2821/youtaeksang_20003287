function velocitylnPQW=solveVelocitylnperifocalFlame(a,e,v)
%a:semimajor_axis, e=eccentricity, v:true_anomaly
mu=3.986004418e+5;%km^3/s^2
v=v*(pi/180);
velocitylnPQW=sqrt(mu/(a*(1-e^2)))*[-sin(v) e+cos(v) 0]';
end