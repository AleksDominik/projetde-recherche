function pop = order( pop)
%UNTITLED10 Summary of this function goes here
%   Detailed explanation goes here
h=size(pop);
population=h(2);
for i = 1:population
    en_cour=pop(i);
    MIn=en_cour.erreur;
    for j = i:population
       if pop(j).erreur<=MIn
         pop(i)=pop(j);pop(j)=en_cour;
         en_cour=pop(i);MIn=pop(i).erreur;
       end
    end
end
end

