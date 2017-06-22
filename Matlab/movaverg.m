function   tab = movaverg( tab1 )
%UNTITLED4 Summary of this function goes here
%   Detailed explanation goes here
tab=zeros(235,1);
for i = 11:253  
 d=tab1(i-10:i);
  tab(i)=mean(d);    
end

end

