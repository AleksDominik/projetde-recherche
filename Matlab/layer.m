
classdef layer<handle
    
    %UNTITLED3 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
      nombredeneurone=0
      Listneur=neurone.empty(0);
    end
    
    
    methods
        function lay=crossover(lay,lay1)
            for h=1:lay.nombredeneurone
                lay.Listneur(h).crossover(lay1.Listneur(h));
            end
        end
        function lay=petmutation(lay)
           for h=1:lay.nombredeneurone
                lay.Listneur(h).petmutation();
            end 
        end
        
        function Obje=layer(c,m)%(nombre de neurone,nombre d'imput de chaque neurone/nombre de neurone sur la couche avant)
            Obje.nombredeneurone=c;
            for j=1:c 
                Obje.Listneur(j)= neurone(m);
            end  
        end
        
        function Lay2=step(Lay2,Lay1)% permet de releier deux couche en envoyant l'output de chaque neurone a l'input du prochain
            h=size(Lay2.Listneur);
            f=size(Lay1.Listneur);
            for k=1:h(2)
                for m=1:f(2)
                    Lay2.Listneur(k).input(m)=Lay1.Listneur(m).output;
                end 
            end          
        end
        function Obj=caloutp(Obj) % calcul l'output de chaque neurone sur une niveau 
            for ss=1:Obj.nombredeneurone
                Obj.Listneur(ss).detoutp();
%                 Obj.Listneur(ss).displa
            end
        end
        function La=pl(La)% permet l'affichage 
            La.caloutp();
            index=size(La.Listneur);
            incr=1;
            t=zeros(1,1);
            for x=1:index(2)
                a=size(La.Listneur(x).lambda);
               for k=1:a(2)
                  t(incr)=La.Listneur(x).lambda(k);
                  incr=incr+1;
               end
           
            end
            disp(t);
          
            
        end
        
        
    end
    
end

