function [] = visualise(a,b,c,x1,x2)
%VISUALISE Summary of this function goes here
%   Visualisiere mir meine Parabel und plotte gegebenfalls die Loesungen
%   aus der Function moonshine.m
%% Andreas Bernatzky 05.11.2019
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
    
    
end

