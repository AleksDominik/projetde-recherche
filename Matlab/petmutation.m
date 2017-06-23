function pop= petmutation(  Propo,pop,N,DIA  )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
h=size(pop);
tes=init(Propo);
%variable de calcul
%     pop(1).affiche();
for in=1:Propo
    
    tes(in).egalite(pop(round(1+(h(2)-1)*rand)));
    tes(in).petmutationnet();

end  
forcasted= forcast( N,tes,DIA);
      er=error1( forcasted ,N,tes,DIA);
for ini=1:Propo
     
      if tes(ini).erreur<pop(1).erreur
%           delete(pop(h(2)));
          pop(h(2)).egalite(tes(ini));
          disp('petite mutation effectue');
          pop=order(pop);
%           break
      end
    
end 
end

