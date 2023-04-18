# ADC conversion simulation used on atmega328
# thmalmeida
# created 2014 ?
# edited on 20220416

clc, clear all
% load('s1_s2_s3_s4_s5_s6_s7_20140522')

# Parameters of project (Circuit)
Rb = 3000.0;                        % Burden resistance [Ohms]
k1 = 2107;
k2 = 1766;
k3 = 2000;
k = k3;								% Proportional Constant parameter

# ADC parameters - clk = F_clk MHz, internal div = 128, 13 cycles for ADC conversion.
n_bits = 12;						% ADC conversion resolution;
F_clk = 8e6;						% Crystal system clock [Hz];
div_1 = 1;							% AHB bus prescale;
div_2 = 1;							% APB2 bus prescale;
div_3 = 8;							% ADC prescale;
% divFc = 128;						% uC dision factor;
% divScale = 16;					% software prescale factor;
adc_clk = F_clk/div_1/div_2/div_3;	% ADC clock after all prescalers
% Options sampling time: 1.5; 7.5; 13.5; 28.5; 41.5; 55.5; 71.5; 239.5.
adc_sampling_list = [1.5 7.5 13.5 28.5 41.5 55.5 71.5 239.5];
adc_sampling_time = adc_sampling_list(8); % amount of time clock to sample [cycles];
adc_conv = 12.5;					% Fixed cycles number of ADC peripheral takes to convert [cycles];
T_conv = adc_sampling_time + adc_conv;	% ADC conversion time [cycles];
% T_conv = 1/1000;

Fs_adc = adc_clk/T_conv;			% ADC sampling rate [samples/s];
Fs_adc = 600;
Ts_adc = 1/Fs_adc;					% Sample time;
% Fs = F_clk/divFc/13;				% Sample rate;
% Fs_div = Fs/divScale;				% Sample rate with prescale;


# Teorical periodic signal construction
f_signal = 60;						% Frequency of sinal;
n_cycles = 2;						% Number of cycles;
T_signal = 1/f_signal;				% Signal period [s]
w = 2*pi*f_signal;					% Angular frequency [rad/s]
phi = 0;							% Phase

# Number of points per cycle definition based on sample rate or fixed
% n_points_cycle = round(Fs/f_signal);	% Number of points per cycle;
% n_points_cycle = 16;				% number of points for full wave
n_points_cycle = Fs_adc/f_signal;	% Number of points per cycle;
n_points = n_points_cycle*n_cycles;	% Number of signal points.

% n_points_cycle_div = Fs_div/f_signal;
% n_points_div  = n_points_cycle_div*n_cycles;

t = linspace(0,1/f_signal*n_cycles,n_points);   % Signal time vector.

    # Circuit polarization parameters for currente sensor
Vref	= 3.3;						% Vref for ADC converter;
GND		= 0;						% gnd for ADC converter;
Vdc		= 3.3;						% Voltage supply [V];
R1		= 120*10^3;					% Voltage divisor top resistor [Ohms];
R2		= 120*10^3;					% Voltage divisor bottom resistor [Ohms];
Rb		= 100;						% Burden resistor. Bias.
V_R2	= Vdc*R2/(R1+R2);			% Voltage over R2 [V];

N1		= 1;						% Current transformer sensor ration parameters
N2		= 2000;						% Current transformer sensor ration parameters

i1		= 15;						% Load current [A];
i2		= i1/(N2/N1);				% Current burden [A];
i2p     = i2*sqrt(2);				% current peak [A];

i2_t	= i2p*sin(w*t+phi);			% i2 signal [A];
v2_t	= Rb*i2_t+V_R2;				% Voltage signal with offset readed by ADC pin;

v2_k = round(v2_t*(2^n_bits-1)/(Vref));	% Voltage signal vector converted to digital value;

v2_kss = repelem(v2_k, 1000);		% super sampling v2_k;
t_ss = linspace(0, t(end), length(t)*1000);	% super sampling time vector;

# Converting the digital readed value to the load current in ampers;
i1_t = (Vref*v2_k/(2^n_bits-1) - R2/(R1+R2)*Vref)*(1/Rb)*(N2/N1);

k1_ = Vref/(2^n_bits-1)
k2_ = R2/(R1+R2)*Vref
k3_ = (1/Rb)*(N2/N1)
% Using the peak value;
i1_RMS = max(i1_t)/sqrt(2);

% using the equation
i1_rms = sqrt(sum(i1_t.^2)/length(i1_t));


file0 = "s_vec.txt";
fid = fopen (file0, "w");
fprintf(fid, " %d,", v2_k);
fclose (fid);

% for i = 1:length(i1_t)
%     i1_t_pow =+ i1_t(i)^2;
% endfor
% figure(1);
% plot(t, v2_k);
% axis([t(1) t(end) 0 2^n_bits]);
% grid on
% figure(2)


% Vk_rms = 26;                            % Vf of power signal [Vrms]
% RL = 688;                               % Resistence of load [Ohms];
% IL_rms = Vk_rms/RL;						% Load current in RMS [A];
% ISp = (N2/N1)*sqrt(2)*IL_rms;           % Signal amplitude [A];
% IS_rms = ISp*sqrt(2);					% Signal current in RMS [A];
% IS = ISp*sin(w*t+phi);                  % Continuous signal build.

%% Dicrete signal reformulation
% VSp = ISp*Rb;                           % Peak value;
% VS = IS*Rb;								% Voltage signal vector [V];
% maxDecValue = 2^n_bits;                 % Maximum decimal value given n n_bits;

# Signal current on voltage format to digital value vector
% 0 ------------- 0
% 
% 255 -------  +VSp
% 0   -------  -VSp
 
% vk = round(VS*(maxDecValue-1)/5 + maxDecValue/2);
% (x-0)   =   255-0
% V-(-Vp)   +Vp - (-Vp)
% vk = round((maxDecValue*(vd+Vp))/(2*Vp));   % Discrete signal

%% Simulated Dicrete signal reformulation adding a prescaled at sample rate
% tks = linspace(0,1/f_signal*n_cycles,n_points/divScale); % Signal time vector;
% vks = round(interp1(t,vk,tks));                        % Signal with prescale factor;
% vks = resample(vk,1,divScale);
% Irms calculation

%% Irms calculation for vk
% s  = vk;                                    % signal selection
% iD = round(s - (mean(s)-maxDecValue/2));    % Offset remove.
% vs1 = iD.*Vref/maxDecValue;                 %
% vs = vs1 - mean(vs1);                       %
% Vk_rms = sqrt(mean(abs(vs).^2));
% Ik_rms = k3*Vk_rms/Rb;

%% Irms calculation for vks
% s  = vks;                                   % signal selection
% iD = round(s - (mean(s)-maxDecValue/2));    % Offset remove.
% vs1 = iD.*Vref/maxDecValue;                 %
% vs = vs1 - mean(vs1);                       %
% Vks_rms = sqrt(mean(abs(vs).^2));
% Iks_rms = k3*Vks_rms/Rb;

%% Irms calculation for Signal Captured (s7)
% s  = s7;                                    % signal selection
% iD = round(s - (mean(s)-maxDecValue/2));    % Offset remove.
% vs1 = iD.*Vref/maxDecValue;                 %
% vs = vs1 - mean(vs1);                       %
% Vks_rms = sqrt(mean(abs(vs).^2));
% Iksr_rms = k3*Vks_rms/R;

fprintf('---- Signal ----\n');
fprintf('Fs          : %d kS/s\n', Fs_adc/1000);
fprintf('Ts          : %d ms\n', Ts_adc*1000);
fprintf('Points/Cycle: %d\n', n_points_cycle);
fprintf('n_points     : %d\n', n_points);
% fprintf('Irms        : %f\n', Ik_rms);

% fprintf('\n---- Simulated Captured Points ----\n');
% fprintf('Fs          : %d S/s\n', Fs_adc);
% fprintf('Points/Cycle: %d\n', round(n_points_cycle_div));
% fprintf('n_points     : %d\n', round(n_points_div));
% fprintf('Irms        : %f\n', Iks_rms);

% fprintf('\n---- Captured Points ----\n');
% fprintf('Fs          : %d S/s\n', Fs_div);
% fprintf('Points/Cycle: %d\n', n_points_cycle_div);
% fprintf('n_points     : %d\n', n_points_div);
% fprintf('Irms        : %f\n', Iksr_rms);


% set(gcf, 'Position', get(0,'Screensize'));

% subplot(4,1,1);
% plot(t,vd,'b')
% ylabel('Vd');
% title('Real Signal')

subplot(3,1,1);
plot(t,v2_t,'g')
% xlabel('Time');
ylabel('v2_t');
title('Real Signal')
axis([0 t(end) GND Vref])
grid on

subplot(3,1,2);
plot(t,v2_k,'k*')
% xlabel('Time');
ylabel('v2_k');
title('Digital Signal')
axis([0 t(end) 0 (2^n_bits-1)])
grid on


subplot(3,1,3);
plot(t_ss, v2_kss,'r')
xlabel('Time');
ylabel('dig');
title('Captured Signal')
axis([0 t(end) 0 (2^n_bits-1)])
grid on

printf("IRMS: %.2f A\n", i1_RMS);
printf("Irms: %.2f A\n", i1_rms);

% Caracteristicas sensor 1  0 a 20 A
% relação 1:2000 com R=300 ohms e Iout =[0 10 mA]




