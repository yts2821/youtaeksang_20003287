function az=azimuth(ENU)
az=atan2d(ENU(:,1),ENU(:,2));
[m,n]=size(az);
for i=1:1:m
    if (az(i)<0)
        az(i)=az(i)+2*pi;
    end
end
az=az';
end