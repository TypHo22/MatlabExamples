% run_moonshine
% Dieses Skript stellt eine kurze Wiederholung zu Functions dar und wieso 
% sie verwendet werden sollten. Hierbei wird das Loesen von quadratischen
% Gleichungen behandelt
%% Andreas Bernatzky 05.11.2019
clear all;
close all;
myA = -1;
myB = 0;
myC = 2;
[x1,x2] = moonshine(myA,myB,myC);
visualise(myA,myB,myC,x1,x2);
