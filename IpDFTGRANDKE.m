function [ delta,lamda ] = IpDFTGRANDKE(x)
%IpDFTGRANDKE Calculates the fundamental frequency's parameters using
%GRANDKE's method
%   Detailed explanation goes here
N=length(x);
w = 1 : 1 : N ;
xhann= x .* transpose(hann(N));
xf=abs(fft(xhann,N));
[~,I]=max(xf);
l = w(I);
lamda =l-1;%Car le vecteur w commence par 1
sig=sign(xf(l+1)-xf(l-1));
alpha=xf(l)/xf(l+sig);
delta=sig*(2-alpha)/(1+alpha);
end
