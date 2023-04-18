## Copyright (C) 2023 thiago
## Author: thiago <thmalmeida@horse>
## Created: 2023-04-17

# Dica: montar o circuito simples resistor capacitor com um sinal quadrado

clear all, close all, clc;
# Inductor Measurement
# Natural answer parameters
R = 1000;                   % resistance in ohms;
L = 100*10^-6;              % inductance in henrys [H'];
tau = R/L;                  % time constant;
T = 5*tau;					% time in [s];
Vs = 5;						% tensão da fonte [V];
il0 = 0;					% corrente inicial no indutor [A];
Is = Vs/R;					% corrente da fonte [A];                        
f = 1/T;					% signal frequency in [Hz];
n = 100;					% number of simulation points;
t = linspace(0, T, n);		% time vector of simulation;

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

figure(1);
plot(t, Vct_natural);

figure(2);
plot(t, Vct_degrau);