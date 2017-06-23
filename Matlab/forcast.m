function forcasted= forcast( N,pop,DIA)
%UNTITLED8 Summary of this function goes here
%   Detailed explanation goes here
h=size(pop);
population=h(2);
forcasted=zeros(N-10,population);
 for index=1:population
   for ind=11:N
     cartouche=[DIA.close(ind),DIA.Rocclose(ind),DIA.Diffopenclose(ind),DIA.DiffHighlow(ind),DIA.Diffopen(ind),DIA.Diffhigh(ind),DIA.Difflow(ind),DIA.Diffclose(ind),DIA.Diffvolume(ind),DIA.sp(ind),DIA.daxopen(ind),DIA.nasdaq(ind),DIA.dowjonesindu(ind),DIA.dowjonestrans(ind)];
%      disp(cartouche);
      pop(index).processing(cartouche);
     forcasted(ind-10,index)=pop(index).output;
     
   end
 end
end

