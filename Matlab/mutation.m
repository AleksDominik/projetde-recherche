function pop =mutation( Propo,N,DIA,pop )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
c=false;
% while c==false

test=init(Propo);
incr=0;
h=size(pop);
forcasted1=forcast(N,test,DIA);
err1=error1(forcasted1,N,test,DIA);
     for g=1:Propo
        if err1(g)<pop(1).erreur
        pop(h(2))=test(g);
        pop=order(pop);
        incr=incr+1;
        c=true;
         disp('succedsssssssssssssssssssssssssssssssssssssssssssssssssssssss');
%         disp(err1(g));
%         disp(pop(h(2)).erreur);
        end
     end
% end 
end

