## Copyright (C) 2020 thmalmeida
## Author: thmalmeida <thmalmeida@horse>
## Created: 2020-03-13

clear all, clc, close all

% Signal constructor
Vrms = 24;                        % RMS voltage [V]
f = 60;                           % frequency source [Hz]
w = 2*pi*f;                       % angular frequency[rad/s]
n = 2;                            % number of periods
npoints = 101;                    % number of points on curve

t2 = 0:0.0001:(1/f)*n;            % time vector [s]
t = linspace(0,(1/f)*n,npoints);  % time vector [s];
Vp = Vrms*sqrt(2);                % Amplitude [V]
angle = 0;                        % phase's angle in degrees;
phi = pi/180*angle;               % fase in radians

vt = Vp.*cos(w.*t+phi);            % Voltage signal [V]
vt = Vp.*sin(w.*t+phi);

% Impedance
R = 1000;                          % Resistence in Ohms
C = 10*10^-9;                   % Capacitance in Faradays [F]
L = 100*10^-3;                    % Inductance in Henrys [H]

XL = w*L;
XC = -1/(w*C);

Z = R + j*XL;
%V = Vp*(cos(phi)+j*sin(phi));


% RC series impedance
Z1 = R + j*XC;
V = Vrms;
I = V/Z1;

%L = linspace(10^-6,10,100);
%C1 = 2*10-6;

%x = -6:0.1:-4;
%C = 10.^x;

%Xl = w.*L;
%Xc = -1./(w*C);


% Summary
fprintf("|Z1| = %.2f kOhms, Z1 = %.2f %.2fj\n", abs(Z1)/10^3, real(Z1), imag(Z1));
fprintf("V = %.2f V, |I| = %.1f uA\n", V, abs(I)*10^6);


%plot(t, vt)
%hold on
%figure(2)
%plot(C, XC);
%grid on

