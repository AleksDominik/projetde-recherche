function pop = init( nmbreseaux )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
pop=network.empty(0);
for cre=1:nmbreseaux
    pop(cre)=network(14);
end

end

