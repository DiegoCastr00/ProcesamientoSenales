clc
clear

Fs = 8000; 
T = 0.5;    
lf = 150;  

while true
    recObj = audiorecorder(Fs, 8, 1);
    recordblocking(recObj, T);
    s = getaudiodata(recObj);

    % Transformada de Fourier de la señal
    F = abs(fft(s, Fs));
    F = F(1:Fs/2);

    % Filtrar frecuencias no deseadas
%     F(1:lf) = 0;
%     F(F < 4) = 0;

    % Encontrar la frecuencia máxima
    [a, b] = max(abs(F));
    fprintf('Frecuencia: %i y Valor máximo: %i\n', b, a);

    % Plotear la forma de onda y la FFT
%     subplot(2, 1, 1);
%     plot(s);
% 
%     subplot(2, 1, 2);
%     plot(abs(F), 'r');
    pause(0.2);
end
