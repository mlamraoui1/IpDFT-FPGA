clear all;
close all;
clc;

%% Le signal biomédical intracortical

load 'intracortical.mat';
x = data; % Scaling to mV

%% Affichage du signal bruité avec pwelch

fs = 40000; %Sample rate (Hz)
idx = fs:length(x); 
pwelch(x(idx),[],[],[],fs);    %PSD of the original signal
title('Intracortical, PSD of signal BEFORE interference cancellation')
axis([0 .350 -15 55])


%% premier bloc
%pour avoir un signal plus propre frquentiellement on fait passer notre signal par 
%un filtre passe bande, d'ordre quatre

%tout d'abord l'auteur définit les paramètres du filtre
% on prend le cas par defaut c'est à dire une bande passante défini entre
% 40Hz et 70Hz

Fc1 = 40;  
Fc2 = 70;  
ordr   = 4;
h  = fdesign.bandpass('N,F3dB1,F3dB2', ordr, Fc1, Fc2, fs);
Hd = design(h, 'butter');

% on applique le filtre au signal bruité
x_f = filter(Hd,x);

% N = 16384;
% x_s = x_f(1:N);
% x_s_f = fft(x_s);
% Px = x_s_f.*conj(x_s_f);
% figure();
% plot(10*log10(Px(1:45)));
