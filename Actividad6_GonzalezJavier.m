clc
clear all

% Cargar audio "La Marcha Imperial"
[x,fs] = audioread("Imperial_March.wav");
fs


% Escuchar audio (Descomentar para escuchar, suena fuerte)
%sound(x,fs)

% Resamplear a 8000 Hz
outputFs = 8000;
y = audioresample(x,InputRate=fs,OutputRate=outputFs);

% Escuchar audio resampleado (Descomentar para esuchar)
%sound(y,outputFs)

% Graficar antes y después de resamplear
t = (0:length(x)-1)/fs;  % Vector de tiempo
subplot(2,1,1);
plot(t, x, 'blue');
title('Antes del resampleo');
xlabel('Tiempo (s)');
ylabel('Amplitud');

t_resampled = (0:length(y)-1)/outputFs;  % Vector de tiempo para la señal resampleada
subplot(2,1,2);
plot(t_resampled, y, 'blue');
title('Después del resampleo');
xlabel('Tiempo (s)');
ylabel('Amplitud');