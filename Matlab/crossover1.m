function pop = crossover1( pop,Propo,DIA,N)
h=size(pop);
tes=init(Propo);
%variable de calcul
%     pop(1).affiche();
for in=1:Propo
    
    tes(in).egalite(pop(round(1+(h(2)-1)*rand)));
    tes(in).crossover(pop(1));

end  
      forcasted= forcast( N,tes,DIA);
      er=error1( forcasted ,N,tes,DIA);
 for ini=1:Propo
       disp('les valeurs compare');
       disp(tes(ini).erreur);
       disp(pop(h(2)).erreur);
      if tes(ini).erreur < pop(1).erreur
%           delete(pop(h(2)));
          pop(h(2)).egalite(tes(ini));
          disp('crossover effectue');
          pop=order(pop);
%           break
      end
    
   end   
end

