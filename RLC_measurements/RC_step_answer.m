## Author: thmalmeida <thmalmeida@horse>
## Created: 2020-06-08

Vs = 10;                                  % Source voltage in Volts [V];
C = 10*10^-6;                             % Capacitance C1 in [F];
R = 100;                                  % Resistance in Ohms;
V0 = 0;                                   % Initial voltage at capacitor [V];
ti = 0;                                   % initial instant time in [ms];
tf = 8*10^-3;                            % end time in milliseconds [ms];
npts = 1001;                              % number of simulation points;
t = linspace(ti, tf, npts);               % time vector;

it = (Vs/R - V0/R).*e.^(-t/(R*C));

plot(t, it)
