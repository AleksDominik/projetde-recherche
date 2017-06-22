classdef neurone<handle
    %UNTITLED2 Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
%        lambda1=0;
%        lambda2=0;
%        lambda3=0;
%        lambda4=0;
%        lambda5=0;
       lambda=[];
       input=[];
       output;
       
    
    end
    
    methods
        function neur=crossover(neur,neur1)
            neur.lambda=(neur.lambda+neur1.lambda)/2;
        end
        function Obj= neurone(b)% b le nombre de lambda donc dimput
            Obj.lambda=-5+10*rand(1,b);
            Obj.input=zeros(1,b);
        end 
        function neu=petmutation(neu)
            neu.lambda=neu.lambda+ rand;
        end

        function Neur=Link(Neur,List) 
% avec cette configuration les neurones sont complement lie cqr il y a autant dimput que de neurone dans chaque layer
            for k=1:size(List)             
            Neur.input(k)=List(k).output;
            end
        end
        function OO=set.output(OO,Value)
            OO.output=Value;
%             disp('la methode set est utilise');
        end
        function Obj=set.input(Obj,Value)
            Obj.input=Value;
        end
        
        function Neur=detoutp(Neur)
            temp=Neur.lambda*Neur.input';
            Neur.output=double(exp(temp)/(1+exp(temp)));
%             disp('determination de loutput');
        end
        function displa(O)
            disp(O.lambda);
            disp(O.output);
            disp(O.input);
            
        end
            
    end
    
end
