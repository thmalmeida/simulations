% close all, clear all, clc

v0 = csvread('data_raw-DSO.txt');
v1 = csvread('data_raw-geladeira.txt');
v2 = csvread('data_raw-xeds.txt');
v3 = csvread('data_raw-xeds2.txt');
% Low pass filter

% y[n]=0.8y[n−1]+0.2x[n]

v0f = filter(v0);
v1f = filter(v1);
v2f = filter(v2);
v3f = v3;

% d_out = v0;

% iL_t = (d_out*(Vmax-Vmin)/(m_bits) + Vmin - V_R2)*(1/Rb2)*(N2/N1);

% plot(v0);
% hold on;
% plot(v1);
% grid on;