clc, clear all;

I = 90;         % Corrente máxima no gerador [A];
V = 14;         % tensão [V]
P = V*I;        % potência do gerador [W]

R = 26*2.54/2/100;  % Raio do aro 26";
v = 7/3.6;     % velocidade tangencial [m/s];
w = v/R;        % w: velocidade angular [rad/s];
T = P/w;        % T: Torque mecânico [N.m]

fprintf('Torque: %2.f N.m\n', T);