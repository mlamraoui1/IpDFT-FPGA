function [ delta,lamda ] = IpDFTJAIN_working(x)
%IpDFTJAIN Calculates the fundamental frequency's parameters using
%JAIN's method
%   Detailed explanation goes here
N=length(x);
w = 1 : 1 : N ;
xf=abs(fft(x,N));%Transformée de fourier sur N points
[Amp,I]=max(xf);%Recupère la valeur maximal de la transformée de Fourier et sa position
l = w(I);
if (xf(l+1)> xf(l-1))%1er cas 0.5>delta>0 
    alpha=xf(l+1)/xf(l);
    delta=alpha/(alpha+1);
    

else                 %2nd cas -0.5<delta<0 
    alpha=xf(l-1)/xf(l);
    delta=-alpha/(1+alpha);
end
lamda =l-1;%Car le vecteur w commence par 1
end
