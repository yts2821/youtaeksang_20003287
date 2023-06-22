function v = true_anomaly(a, e, t, toc, M0)
mu = 3.986004418e+5; % km
dt = datetime(t) - datetime(toc);
[h, m, s] = hms(dt);
time = h*3600 + m*60 + s;
% iteration
n = sqrt(mu/(a^3));
M = n*time + M0*pi/180;
E = M;
while(1)
    E_old = E;
    E = M + e*sin(E);
    if abs(E-E_old)<=10^-9
        break
    end
end
v = 2*atan2(tan(E/2)*sqrt(1+e),sqrt(1-e));
if v<0
    v = v+2*pi;
end
v = v*(180/pi);
end