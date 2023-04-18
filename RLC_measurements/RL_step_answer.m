## Author: thmalmeida <thmalmeida@horse>
## Created: 2020-06-08

Vs = 10;                                  % Source voltage in Volts [V];
L = 100*10^-3;                            % Inductance L1 in [H];
R = 100;                                  % Resistance in Ohms;
I0 = 0;                                   % Initial inductor current [A];
ti = 0;                                   % initial instant time in [ms];
tf = 8*10^-3;                            % end time in milliseconds [ms];
npts = 1001;                              % number of simulation points;
t = linspace(ti, tf, npts);               % time vector;

it = Vs/R + (I0 - Vs/R).*e.^-((R/L).*t);

plot(t, it)
