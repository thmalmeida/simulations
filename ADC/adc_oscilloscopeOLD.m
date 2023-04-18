bits = 8;                               % ADC resolution;
Fs = 4.807692307692308e+03;             % uC sample frequency [S/s];
nSamples = 640;                         % Number of points
t = linspace(0,1/Fs*nSamples,nSamples); % time vector [s]
maxDecValue = 2^bits;                   % Maximum decimal value given n bits;

Rburden = 300.0;
k1 = 2107;
k2 = 1766;
k3 = 2000;
k = k3;

sADC0 = serial('COM7');
set(sADC0,'BaudRate',9600)
set(sADC0,'terminator','LF');
set(sADC0,'InputBufferSize',nSamples);
% set(sADC0,'Timeout',500);
fopen(sADC0);

% iD = round(s - (mean(s)-maxDecValue/2));    % Offset remove.
% vs1 = iD.*Vref/maxDecValue;                 %
% vs = vs1 - mean(vs1);                       %
% Vks_rms = sqrt(mean(abs(vs).^2));
% Iksr_rms = k3*Vks_rms/R;
% set(gcf, 'Position', get(0,'Screensize'));

for i=0:10
fwrite(sADC0,'a');
pause(0.1);
vk = fread(sADC0,nSamples, 'uint8');

% vk = 5*x/255;
drawnow;
% plot(t,vk,'r')
plot(t,vk,'r')
xlabel('Time');
ylabel('Amplitude');
title('Real Signal')
axis([0 t(end) 0 255])
end


close all;
fclose(sADC0);


