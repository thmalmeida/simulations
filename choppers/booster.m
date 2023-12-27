% Booster simulation

Vs = 12;					% input voltage [V];
Va = 127;					% output voltage [V];
L  = 10*10^-3;				% inductance [H];

k  = 50/100;				% transistor duty cycle [%];
t1 = k*T;					% transistor time on [s];
t2 = (1-k)*T;				% transistor time off [s];


I1 = 4;
I2 = 6;
dI = I2-I1; 				% current variation on t1 long [A];

% mode 1: transistor on for time t1 long;
t1 = dI*L/Vs;

% mode 2: transitor off for time t2 long;
t2 = dI*L/(Va-Vs);
% Va = Vs*T/t2;
Va = Vs/(1-k);              % Average output voltage [V];
Is = Ia/(1-k);				% Average input current without loss [A];

% f  = 1000;					% frequency operation [Hz];
% T  = 1/f;					% period [s];
T  = dI*L*Va/(Vs*(Va-Vs));  % switch period [s];
f  = 1/T;                   % frequency operation [Hz];
dI = Vs*(Va-Vs)/(f*L*Va);   % peak to peak ondulation
% dI*L*Va/()