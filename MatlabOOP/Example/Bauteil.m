classdef Bauteil
    %Bauteil Beispielklasse fuer OOP
    %   SimpleKlassendefinition so wie sie in C++ ueblich ist
    %% Andreas Bernatzky 08.05.2019 
    %%
    
    properties(GetAccess = private , SetAccess = private)%getAcess=readOnly,%setAcess=writeOnly
      
        Voltage;
        Temperature;
        
    end
    
    methods(Access=public)
               
        function [myObj]=Bauteil(myVoltage,myTemperature) %%konstruktor elementinitialisierung   
           myObj.Voltage=myVoltage;
           myObj.Temperature=myTemperature;
        end
        
        function [myObj]=setTemp(myObj,myTemperature)%setterMethode
           myObj.Temperature=myTemperature; 
        end
        
        function [temp]=getTemp(myObj)%getterMethode
           temp=myObj.Temperature; 
        end
        
        function [volt]=getVolt(myObj)%getterMethode
           volt=myObj.Voltage; 
        end
        
        
        %% Operator overload fuer addition
        function [myObj]= plus(obj1,obj2)
            temp1=getTemp(obj1);
            volt1=getVolt(obj1);
            temp2=getTemp(obj2);
            volt2=getVolt(obj2);
            tempNew=temp1+temp2;
            voltNew=volt1+volt2;   
            myObj=Bauteil(voltNew,tempNew);
        end
        
        
    end
    
    
end

