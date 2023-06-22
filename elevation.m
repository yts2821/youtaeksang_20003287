function el=elevation(ENU,el_mask)
el=asin(ENU(:,3)./sqrt(ENU(:,1).^2+ENU(:,2).^2+ENU(:,3).^2));
[m,n]=size(el);
for i=1:1:m
    if (el(i)<=el_mask*pi/180)
        el(i)=NaN;
    end
end
el=180/pi*el';
end