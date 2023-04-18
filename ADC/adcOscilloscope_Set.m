%% Commands
%   PWM Option
%   1 = pwm option
%   127 = duty cycle
%   0 = non inverting mode
%   64 = divScale
%  fwrite(sADC0,'$1:127:0:0064;');
%
%   Oscilloscope Settings
%  fwrite(sADC0,'$2:0:0060:4:128:2;');
% set(sADC0,'InputBufferSize',nSamples);

%%
% Criar um algoritmo para atualizar as configurações do DSO

%% Parameters
F_clk = 16e6;                               % Crystal system clock;

f = 60;
numberOfCycles = 8;                         % Number of cycles;
divFc = 128;
divScale = 2;                               % prescale factor;

channel = 0;
Fs = F_clk/divFc/13;                        % Sample rate;
Fs_div = Fs/divScale;                       % Sample rate with prescale;
nPointsPerCycle = round(Fs/f);              % Number of points per cycle;
nPoints = nPointsPerCycle*numberOfCycles;   % Number of signal points.
% t = linspace(0,1/f*numberOfCycles,nPoints); % Signal time vector.
nPointsPerCycle_div = Fs_div/f;
nPoints_div  = round(nPointsPerCycle_div*numberOfCycles);
nSamples = nPoints_div - 1;
%%
t = linspace(0,1/Fs_div*nSamples,nSamples);
if(nSamples < 645)
%     strSend = fprintf('$2:%d:%.4d:%d:%.3d:%d;',channel, f, numberOfCycles, divFc, divScale);
    fprintf(sADC0,'$2:%d:%.4d:%d:%.3d:%d;',channel, f, numberOfCycles, divFc, divScale);
    set(sADC0,'InputBufferSize',nSamples);
    fprintf('Set!\n\n');
end

