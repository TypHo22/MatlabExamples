% Diese Funktion sortiert einen unsortierten Vektor aufsteigend
%
% Input:  1xn Vektor (unsortiert)
% Output: 1xn Vektor (sortiert)
%
% Diese Funktion sortiert einen Vektor aufsteigend. Es werden immer zwei 
% benachbarte Vektorpositionen miteinander verglichen. 
% Ist die linke Position groesser als die Rechte wird getauscht und es wird
% wieder von vorne kontrolliert.
% Ist die linke Position kleiner als die Rechte wird nicht getauscht und es
% werden die naechsten beiden Paerchen betrachtet.
% Das hier zugrunde liegende Prinzip entspricht dem Bubblesort-Algorithmus
% Beispiel unsorted= 4,2,8,1,9,7 -> sorted= 1,2,4,8,7,9
% Urzustand:    4   2   8   1   9
%
% 1. Durchlauf: 2	4	8	1	9
%
% 2. Durchlauf: 2	4	1	8	9
%
% 3. Durchlauf: 2	1	4	8	9
%
% 4. Durchlauf: 1	2	4	8	7
%
% von Andreas Bernatzky 30.10.2018


function [sortedvector] = SortOWN(vector2sort)


L=1; %linkes element
R=L+1; %rechtes Element
k=length(vector2sort); % Laenge des zu sortierenden Vectors

sortedvector=vector2sort; %Vorbelegung
while R<=k %sobald das rechte element der laenge entspricht wird abgebrochen
    
    if sortedvector(L)>sortedvector(R) %Tauschen
        
        % Hilfsvektor=sortedvector; %Hilfsvektor um nichts zu ueberschreiben
        Hilfsvar = sortedvector(R);
        sortedvector(R)=sortedvector(L);
        sortedvector(L)=Hilfsvar;
        
        L=1;%Beginne wieder von vorne
        R=L+1;%Beginne wieder von vorne
    elseif sortedvector(L)<=sortedvector(R) %rutsche ein paerchen weiter, weil hier nichts zu tun ist
        L=L+1;
        R=R+1;
    end
    
end
end
