 clear all, clc

Vref = 5.0;
Vpmax = 4.5;
Vpmin = 0.5;
nbits = 10;
Pmax = 175;     % Pressure [psi];

Vread = 4.5;

% 1 m.c.a. = 1.45038 psi
Kpsi = 1.45038;
Ppsi = Pmax*(Vread-Vpmin)/(Vpmax-Vpmin);
Pmca = Ppsi/Kpsi;

fprintf('Input Voltage: %.2f\n',Vread);
fprintf('Ppsi: %.2f\n',Ppsi);
fprintf('Pmca: %.4f\n',Pmca);

R1 = 330E3;
R2 = 680E3;
Vd = 638;
Vout = (Vd/1023)*Vref;
Vraw = Vout*(R1+R2)/R1;
fprintf('Vbat: %.4f\n',Vraw);
% (28) 998829075 adelio
