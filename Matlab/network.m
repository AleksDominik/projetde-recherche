classdef network<handle
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
      c=15;
      niveau0=layer(15,15); % le nombre de neurones par couches peut changer 
      niveau1=layer(3,15);
      niveau2=layer(3,3);
      niveau21=layer(3,3);
      niveau3=layer(1,3);
      rank;
      erreur=0;
    end
    properties(Dependent)
        output;
    end
    methods
%         function net=network(net1,net2)
%             
%         end 
        function net=crossover(net,net1)           
          net.niveau0.crossover(net1.niveau0);
          net.niveau1.crossover(net1.niveau1);
          net.niveau2.crossover(net1.niveau2);
          net.niveau21.crossover(net1.niveau21);
          net.niveau3.crossover(net1.niveau3);
            
        end

        function value=get.output(obj)
            
         value=obj.niveau3.Listneur(1).output   ;
        end
     
        function  net=set.erreur(net,Value)
            net.erreur=Value;
        end
        function net=network(d)
%            net.c(d);
%          disp('jdjf');
           net.niveau0=layer(d,d);
           net.niveau1=layer(3,d);
           net.niveau2=layer(3,3);
           
%            net.niveau21=layer(11,d);
%           
           net.niveau3=layer(1,3) ;
        end
        function net=processing(net,Listinput)
         %initialisation de la premiere couche
        frtl=size( net.niveau0.Listneur);
        
         for kk=1:frtl(2)
            net.niveau0.Listneur(kk).output=Listinput(kk);
%             net.niveau0.Listneur(kk).displa();
         end 
         net.niveau1.step(net.niveau0);
         net.niveau1.caloutp();
         net.niveau2.step(net.niveau1);
         net.niveau2.caloutp();
         
%          net.niveau21.step(net.niveau2);
%          net.niveau21.caloutp();
         
         net.niveau3.step(net.niveau2);
         net.niveau3.caloutp();
        end
         function  net=affiche(net)
         
         disp('niveau2');
         net.niveau2.pl();
         disp('niveau3');
         net.niveau3.pl()   
         end  
         
         function net=petmutationnet(net)
           net.niveau0.petmutation();
          net.niveau1.petmutation();
          net.niveau2.petmutation();
          net.niveau21.petmutation();
          net.niveau3.petmutation();
         end
         function net=egalite(net,net1)
          net.niveau0.egalite(net1.niveau0);
          net.niveau1.egalite(net1.niveau1);
          net.niveau2.egalite(net1.niveau2);
          net.niveau21.egalite(net1.niveau21);
          net.niveau3.egalite(net1.niveau3);
          net.erreur=net1.erreur;
          
         end
    end
   

end

