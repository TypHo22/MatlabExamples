%% Callbackskript für den Plot

%% Definitionsmenge u. Wertemenge bilden
t = 0:0.01:2;
A_string=Kuehlschrank.Gemuesefach.textbox_txt.String;

A_value_temp=str2num(A_string);
if(isnan(A_value_temp)==0)
    A_value=A_value_temp;
y = A_value.*sin(2*pi*t);
%% Plotten (guter Stil)
%  Funktioniert auch mit GUI-Figures die mehrere Axen beinhalten!
plot(Kuehlschrank.Gemuesefach.AX_Plot,t,y)          %eigentlicher Plot
Kuehlschrank.Gemuesefach.AX_Plot.YLim = [-2,2];     %YLim ist Eigenschaft (property)
grid(Kuehlschrank.Gemuesefach.AX_Plot ,'minor')     %grid() ist wieder Funktion wie plot()
else
    disp('Error');
end
%% Plotten (schlechter Stil)
%plot(t,y)
%ylim([-2,2])
%grid minor


% %  Möglichkeit für die Schreibfaulen:
% AX = Kuehlschrank.Gemuesefach.AX_Plot             %Axis Object zwischenspeichern
% %  Ab hier dann mit AX arbeiten:
% plot(AX,t,y)                                      %eigentlicher Plot
% AX.YLim = [-2,2];                                 %YLim ist Eigenschaft (property)
% grid(AX,'minor')                                  %grid() ist wieder Funktion wie plot()
% clear AX                                          %Zwischengespeicherte Variable wieder leeren