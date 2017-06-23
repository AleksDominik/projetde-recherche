function err = error1( forcasted ,N,pop,DIA)
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
h=size(forcasted);

err=zeros(h(2),1);% tableau regroupant les erreur 
for ee=1:h(2)
    err(ee)=sum((forcasted(:,ee)-DIA.close(12:N+1)).^2);
%     disp('nnn');
    pop(ee).erreur=err(ee);
end


end

