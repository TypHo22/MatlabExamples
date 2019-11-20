%%Not2Do
% Ein Gegenbeispiel zu run_myFunc und wie man es nicht tun sollte
%% Andreas Bernatzky 05.11.2019
%% Teil von run_moonshine
clear all;
close all;
a = 1;
b = 1;
c = 0;
%% Teil von moonshine
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
%% teil von visualise
x = -10:0.01:10;
y = a * x.^2 + b * x + c;
%% do plotting
figure(1)
plot(x,y);
hold on

if(isempty(x1) == 1 && isempty(x2) == 1)%nichts zu markieren

elseif(isempty(x1) == 0 && isempty(x2) == 1)%setze eine markierung
    scatter(x1,a * x1^2 + b * x1 + c,40,'x','r');
else%setze zwei markierungen
    scatter(x1,a * x1^2 + b * x1 + c,40,'x','r');
    scatter(x2,a * x2^2 + b * x2 + c,40,'x','r');
end

grid on