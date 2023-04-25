% close all, clear all, clc

v0 = csvread('raw_data.txt');

% Low pass filter

% y[n]=0.8y[n−1]+0.2x[n]

n = length(v0);
v1 = zeros(1, n);
v1(1) = v0(1);
for i=2:1:n
    v1(i) = 0.8*v1(i-1) + 0.2*v0(i);
end

% d_out = v0;

% iL_t = (d_out*(Vmax-Vmin)/(m_bits) + Vmin - V_R2)*(1/Rb2)*(N2/N1);

% plot(v0);
% hold on;
% plot(v1);
% grid on;