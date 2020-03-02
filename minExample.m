%minimalExample for solving linear Equations with matlab
%lsqlin solves an overdetermined system
%% Andreas Bernatzky 02.03.2020

clear all;
close all,

 syms x y z
 eqn1 = x + -0.25*y + (1/16) * z == 0;
 eqn2 = x + 0.5*y + 0.25 * z == 1;
 eqn3 = x + 2*y + 4*z == 0;
 eqn4 = x + 2.5*y + (25/4)*z == 1;
 [Alin,B] = equationsToMatrix([eqn1, eqn2, eqn3], [x, y, z]);
 [Alsq,B] = equationsToMatrix([eqn1, eqn2, eqn3, eqn4], [x, y, z]);%overdetermined system
 X = linsolve(Alsq,B)
 Xlsqr = lsqlin(double(Alsq),double(B));
 
 %for validation:
 %https://ganymed.math.uni-heidelberg.de/~lehre/SS12/numerik0/12-la-5.pdf
