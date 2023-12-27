## Copyright (C) 2023 thiago
## Author: thiago <thmalmeida@horse>
## Created: 2023-04-17

# Dica: montar o circuito simples resistor capacitor com um sinal quadrado

clear all, close all, clc;
# Inductor Measurement
# Natural answer parameters
R = 10;                     % resistance in ohms;
L = 2.5*10^-3;              % inductance in henrys [H];
tau = L/R;                  % time constant;
T = 5*tau;					% time in [s];
Vs = 10;					% tensão da fonte [V];
il_0 = 1;					% corrente inicial no indutor [A];
Is = Vs/R;					% corrente da fonte [A];                        
f = 1/T;					% signal frequency in [Hz];
n = 501;					% number of simulation points;
t = linspace(0, T, n);		% time vector of simulation;

% Natural answer
il_t_natural = il_0*e.^(-t/tau);

vl_t_natural = -il_0*R*e.^(-t/tau); % v(t) = Ldi/dt

% vc(tau) (natural)
il_t_natural_6321 = il_0*e.^(-1);

% Degrau answer
il_0 = 1;
il_t_degrau = Vs/R + (il_0 - Vs/R)*e.^(-t/tau);
vl_t_degrau = (Vs - il_0*R)*e.^-(t/tau);

% vc(tau) (degrau)
il_t_degrau_6321 = Vs/R + (il_0 - Vs/R)*e.^(-1);

% Summary
fprintf("Frequency: %d Hz\n", f);

subplot(2,1,1);
xlabel('Time');
ylabel('dig');
title('RL Answers')
plot(t, il_t_natural);
hold on;
plot(t, vl_t_natural, 'r');
grid on;
% axis([0 t(end) 0 (2^n_bits-1)])

subplot(2,1,2);
plot(t, il_t_degrau);
hold on;
plot(t, vl_t_degrau, 'r');
grid on