function pop =mutation( Propo,N,DIA,pop )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here
test=init(Propo);
incr=0;
h=size(pop);
forcasted1=forcast(N,test,DIA);
err1=error1(forcasted1,N,test,DIA);
     for g=1:Propo
        if err1(g)<pop(h(2)).erreur
        pop(h(2))=test(g);
        pop=order(pop);
        incr=incr+1;
%         disp('succedsssssssssssssssssssssssssssssssssssssssssssssssssssssss');
%         disp(err1(g));
%         disp(pop(h(2)).erreur);
        end
     end

end

