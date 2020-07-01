function [Re,Im] = Goertzel(x,l)
 N= length(x);
 w = 2*pi*l/N;
 cw = cos(w); c = 2*cw;
 sw = sin(w);
 z1=0; z2=0; % initialisation
 for i = 1 : N
 z0 = x(i) + c*z1 - z2;
 z2 = z1;
 z1 = z0;
 end;
 Re= cw*z1 - z2;
 Im = sw*z1;



