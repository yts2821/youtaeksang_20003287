function el=elevation(ENU,el_mask)
el=aisn(ENU(:,3)./sqrt(ENU(:,1).^2+ENU(:,2).^2+ENU(:,3).^2));
[m,n]=size(el);
for i=1:1:m
    if (el(i)<=el_mask*(pi/180))
        el(i)=nan;
    end
end
el=el'*(180/pi);
end