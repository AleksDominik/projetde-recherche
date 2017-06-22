function tab = Diff(tab1,tab2 )
%UNTITLED6 Summary of this function goes here
%   Detailed explanation goes here
tab=zeros(253,1);
for i = 11:253 
  tab(i)= ((tab1(i)-tab2(i))/tab2(i))*100;    
end

end

