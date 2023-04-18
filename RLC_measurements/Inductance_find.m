% Algorithm to find the inductance of RL load;

Vl = 220;       % Line voltage [V];
Pw = 500;       % Real power [W];
f  = 60;        % Power supply frequency [Hz];
fp = 0.92;      % Power factor;
Is = 2;         % Apparent current [A];

%% ------------------------------------------------------------------
% R  = Vl^2/Pw;
% Zm = R/fp;
% theta = acosd(fp);

% Xl = Zm*sind(theta);
% L  = Xl/(2*pi*f)
clc, clear all, close all
L = 10.0E-3;                        % Lenght [m];
W = 5.0E-3;                         % width [m];
T = 0.034E-3;                       % Thickness [m];
p = 1.72E-8;                        % Resistivity of Copper is:	1.7E-6 ohm*cm;
tc = 3.9E-3;                        % Temp_Co of Copper is:	3.9E-3 ohm/ohm/C;
temp = 35;                          % temperature Degree;

A = W*T;                            % Section area [mm2]
R = p*L/A*(1+tc*(temp-25));         % Resistence [Ohms]

% 1 mil = 25,4 um
K1 = 0.024;                         % Coefficient for in layer;
K2 = 0.048;                         % Coefficient for out layer;
T = T/0.0254*10^3;                  % temperature Degree;
W = W/0.0254*10^3;                  % temperature Degree;
I1 = K1*temp^0.44*(W*T)^0.725;      % temperature Degree;
I2 = K2*temp^0.44*(W*T)^0.725;      % temperature Degree;

fprintf('Area       : %.3f mm x mm\n', A*10^6);
fprintf('Resistence : %.3f mOhms\n', R*10^3);
fprintf('Iin        : %.2f A\n', I1);
fprintf('Iout       : %.2f A\n', I2);

fprintf('\n');

% Notes:
% Electrical Equations:
% Resistance = Resistivity*Length/Area*(1 + (Temp_Co*(Temp - 25))
% Where, Area = Thickness*Width
% A copper Thickness of 1 oz/ft^2 = 0.0035 cm
% Copper Resistivity = 1.7E-6 ohm-cm
% Copper Temp_Co = 3.9E-3 ohm/ohm/C
% 
% Thermal Equations:
% Thermal_Resistance = Thermal_Resistivity*Length/Area
% Copper Thermal_Resistivity = 0.249 cm-K/W (at 300K)


%  1/f  ------------- 2*pi
%   t   -------------  x

% x = t*2*pi*f