% clear all, clc, close all
%% Commands
%   ----- PWM Option ------
%   1 = pwm option
%   0 to 127 = duty cycle
%   0 = non inverting mode
%   64 = divScale
%   fwrite(sADC0,'$1:005:0:0064;');
%
%   ----- Oscilloscope Settings -----
%   DSO Func; Channel; Signal Frequency; nCycles; divFactor; divScale
%   fwrite(sADC0,'$2:0:0060:4:128:2;');
%   set(sADC0,'InputBufferSize',nSamples);

%%
% Criar um algoritmo para atualizar as configurações do DSO

%% Parameters
F_clk = 16e6;                               % Crystal system clock;

f = 60;
numberOfCycles = 4;                         % Number of cycles;
divFc = 128;
divScale = 1;                               % prescale factor;

Fs = F_clk/divFc/13                         % Sample rate;
Fs_div = Fs/divScale;                       % Sample rate with prescale;
nPointsPerCycle = round(Fs/f);              % Number of points per cycle;
nPoints = nPointsPerCycle*numberOfCycles    % Number of signal points.
% t = linspace(0,1/f*numberOfCycles,nPoints); % Signal time vector.
nPointsPerCycle_div = Fs_div/f;
nPoints_div  = round(nPointsPerCycle_div*numberOfCycles)
nSamples = nPoints_div - 10;
%%
% bits = 8;                          % ADC resolution;

% Fs = 4.807692307692308e+03;
% Fs = 1.923076923076923e+04;
% nSamples = 481;
t = linspace(0,1/Fs_div*nSamples,nSamples);
% maxDecValue = 2^bits;               % Maximum decimal value given n bits;
% Rburden = 300.0;
% k1 = 2107;
% k2 = 1766;
% k3 = 2000;
% k = k3;
% R = 1000;

% adcOscilloscope_start
