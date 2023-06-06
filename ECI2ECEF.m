function DCM=ECI2ECEF(time)
t=juliandate(datetime(time));
thetag_t=siderealTime(t)*pi/180;
Q=[cos(thetag_t) -sin(thetag_t) 0; sin(thetag_t) cos(thetag_t) 0; 0 0 1];
DCM=Q';
end