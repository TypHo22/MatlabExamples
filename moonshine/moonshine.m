function [x1,x2] = moonshine(a,b,c)
%MOONSHINE 
%   Diese Funktion ist eine Implementierung zum finden der Nullsten von
%   quadratischen Gleichungen (Parabeln). Diese Formel ist auch unter
%   folgenden Namen gelaeufig:
%   Mondscheinformel/Mitternachtsformel oder pq-Formel
%% Andreas Bernatzky 05.11.2019
D = b^2 - 4 * a * c; %Diskriminante
if(D > 0) % es existieren zwei Loesungen
x1 = (-b + sqrt(b^2 - 4 * a * c)) / (2 * a);
x2 = (-b - sqrt(b^2 - 4 * a * c)) / (2 * a);
elseif(D == 0) %es existiert eine Loesung
    x1 = (-b + sqrt(b^2 - 4 * a * c)) / (2 * a);
    x2 = [];
else %Es existiert keine Loesung
    x1 = [];
    x2 = [];
    disp('Keine Loesung moeglich');
end

end

