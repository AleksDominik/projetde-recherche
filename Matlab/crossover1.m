function pop = crossover1( pop,popcro)
h=size(pop);

if pop(h(2)).erreur~=pop(h(2)-1).erreur
%     pop(1).affiche();
    popcro(1)=pop(1);
    popcro(2)=pop(round(1+(h(2)-1)*rand));
    popcro(2).crossover(popcro(1));
    disp('new');
    pop(1).erreur;
    pop=order(pop);
end    

end

