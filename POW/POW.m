%% POW Function 
%
%  Input:   Basis,    1x1  (Reelle positive Zahl)
%           Exponent, 1x1  (natuerliche Zahl)
%  Output:  Result,   1x1               
%
%  Diese Funktion potenziert eine Basis mit einem Exponenten
%
%  Andreas Bernatzky 30.10.18
function [Result] = POW(Base,Exponent) %Function Kopf ()=Input, []=Output
Result=1; %vorbelegen
while (Exponent ~= 0)%Solange wie der Exponent ungleich 0 ist
    Result =Result*Base; 
    Exponent=Exponent-1; %Dekrement
end
end

