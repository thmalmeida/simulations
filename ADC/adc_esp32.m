# ADC conversion simulation used for ESP32
# started on 20220416
# thmalmeida
# Last modified 20230402
# hardware simulation to get the raw value
clc, clear, close all

# ADC parameters
n_bits  = 12;                       % ADC convertion resolution;
F_clk = 16e6;                       % Crystal system clock [Hz];
div_1 = 1;								% AHB bus prescale;
div_2 = 1;								% APB2 bus prescale;
div_3 = 2;								% ADC prescale;
div_4 = 1.5;							% amount of time clock to sample [cycles];

Fs_out = F_clk/div_1/div_2/div_3/div_4;	% Sample rate [samples/s];

f_sample = n_points_cycle/T_signal; % Sample rate;

# Teorical periodic signal construction
f_signal = 60;						% Frequency of sinal [Hz];
n_cycles = 2;						% number of wave cycles to sample
T_signal = 1/f_signal;				% Signal period [s];
w 		 = 2*pi*f_signal;			% Angular speed [rad/s]
phi      = 0;                       % initial phase [rad]

# Number of points per cycle definition based on sample rate or fixed
n_points_cycle = 16;				% number of points for full wave
n_points2 = T_signal/(1/f_sample);
n_points = n_points_cycle*n_cycles;

t       = linspace(0,n_cycles*T_signal,n_points); % time vector [s]

# Circuit polarization parameters
Vref    = 1.1;                      % ADC max voltage read [V]. 2^(n_bits)-1;
GND		= 0;						% Ground reference [V];
Vdc     = 3.3;                      % Voltage supply [V];
R1      = 180*10^3;                 % Voltage divisor top resistor [Ohms];
R2      = 120*10^3;                 % Voltage divisor bottom resistor [Ohms];
Rb      = 100;                      % Burden resistor. Bias.
V_R2    = Vdc*R2/(R1+R2);           % Voltage over R2 [V];

n1n2    = 2000;                     % Current transformer sensor ratio;
i1      = 5;                        % Load current [A];
i2      = i1/n1n2;                  % Current burden [A];
i2p     = i2*sqrt(2);               % current peak [A];

# Time vector;
##A       = 1;                         % Amplitude [V];

##vt      = A*cos(w.*t+phi);           % signal [V];
i2_t    = i2p*sin(w*t+phi);          % i2 signal [A];
v2_t    = Rb*i2_t;

fprintf("Sample rate: %.1f S/s\n", f_sample);
fprintf("Total points: %d \n", n_points);


plot(t, v2_t);
grid on;
