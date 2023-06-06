function el=elevation(ENU,el_mask)
el=asind(ENU(:,3)/sqrt(ENU(:,1).^2+ENU(:,2).^2+ENU(:,3).^2));
[m,n]=size(el);
for i=1:1:m
    if (el(i)<=el_mask)
        el(i)=NAN;
    end
end
el=el'
end