## Copyright (C) 2021 Thiago
## Author: Thiago <thmalmeida@horse>
## Created: 2021-09-16
clc, clear, close all

##     ___ V1 = 3.3 V rms       ___ Vmax = 1.1 V
##      |                         |
##      |                         |
##     | |
##     | | R1
##     | |
##      |___ V2
##      |
##     | |
##     | | R2
##     | |
##      |  
##     _|____ Vref

# Find R2 using these parameters
V1 = 3.3;									% Supply voltage [V];
Vref = 1.1;									% Max voltage read for ADC peripheral (ESP32) [V];
% V2 = Vref/2;								% Vref/2 for reference [V];
V2 = (0.15 + 2.450)/2;						% Reference using dB-11 with range 150 mV to 2450 mV;
R1 = 56.0*10^3;

R2 = V2*R1/(V1-V2);

fprintf('----- Voltage divisor R2? -----\n');
fprintf('R1 = %.1f Ohms (defined)\n',R1);
fprintf('R2 = %.1f Ohms\n',R2);
fprintf('V2 = %.2f V\n',(R2)/(R1+R2)*V1);

% Using defined Resistors values
R1 = 180.0*10^3;
R2 = 120.0*10^3;

V2 = R2*V1/(R1+R2);

fprintf('\n----- Voltage divisor V2? -----\n');
fprintf('Using defined R1 = %.1f Ohms and R2 = %.1f\n',R1,R2);
fprintf('V2 = %.2f V\n',(R2)/(R1+R2)*V1);


% Vac divisor for Vrms = 220 V
R3 = 680*10^3;
Vrms = 220;
Vp = Vrms*sqrt(2);
Vpp = 2*Vp;
V4 = 2450/2*10^-3;
R4 = V4*R3/(Vp-V4);

fprintf('\n----- Vac divisor -----\n');
fprintf('R3 = %.2f Ohms\n',R3);
fprintf('Vrms = %.2f V, Vp = %.2f V, Vpp = %.2f\n',Vrms, Vp, Vpp);
fprintf('R4 = %.2f Ohms\n',R4);

fprintf('V4 = %.2f V\n',Vpp*R4/(R3+R4));
fprintf('\n');


