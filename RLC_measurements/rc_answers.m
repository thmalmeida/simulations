## Copyright (C) 2022 thiago
## Author: thiago <thmalmeida@horse>
## Created: 2022-10-12

# Dica: montar o circuito simples resistor capacitor com um sinal quadrado

clear all, close all, clc;
# Capacímetro
# Natural answer parameters
R = 1000;                   % resistance in ohms;
C = 470*10^-9;              % capacitance in faradays [F];
tau = R*C;                  % time constant;
T = 5*tau;                  % time in [s];
Vs = 5;                     % tensão da fonte [V];
vc0 = 0;                    % tensão inicial no capacitor [V];
Is = Vs/R;                  % Corrente da fonte [A];                        
f = 1/T;                    % signal frequency in [Hz];
n = 100;                    % number of simulation points;
t = linspace(0, T, n);      % time vector of simulation;

% Natural answer
Vct_natural = Vs*e.^(-t/tau);

% vc(tau) (natural)
Vct_natural_6321 = Vs*e.^(-1);

% Degrau answer
Vct_degrau = Is*R + (vc0 - Is*R)*e.^(-t/tau);

% vc(tau) (degrau)
Vct_degrau_6321 = Is*R + (vc0 - Is*R)*e^(-1);

% Summary
fprintf("Frequency: %d Hz\n", f);


subplot(2,1,1);
plot(t, Vct_natural);

subplot(2,1,2);
plot(t, Vct_degrau);