# ADC conversion simulation used on atmega328
# thmalmeida
# created 2014 ?
# edited on 20220416

clc, clear all
% load('s1_s2_s3_s4_s5_s6_s7_20140522')

# Parameters of project (Circuit)
Rb = 3000.0;                            % Burden resistance [Ohms]
k1 = 2107;
k2 = 1766;
k3 = 2000;
k = k3;									% Proportional Constant parameter

# ADC parameters - clk = F_clk MHz, internal div = 128, 13 cycles for ADC conversion.
n_bits = 10;                            % ADC conversion resolution;
F_clk = 16e6;                           % Crystal system clock [Hz];
divFc = 128;                            % uC dision factor;
divScale = 16;                          % software prescale factor;
Fs = F_clk/divFc/13;                    % Sample rate;
Fs_div = Fs/divScale;                   % Sample rate with prescale;

# Teorical periodic signal construction
f_signal = 60;							% Frequency of sinal;
n_cycles = 2;							% Number of cycles;
n_points_cycle = 16;					% number of points for full wave
T_signal = 1/f_signal;					% Signal period [s]
w = 2*pi*f_signal;						% Angular frequency [rad/s]
phi = 0;                                % Phase

n_points_cycle = Fs/f_signal;			% Number of points per cycle;
n_points_cycle = round(Fs/f_signal);	% Number of points per cycle;

n_points = n_points_cycle*n_cycles;		% Number of signal points.
t = linspace(0,1/f_signal*n_cycles,n_points);   % Signal time vector.

n_points_cycle_div = Fs_div/f_signal;
nPoints_div  = n_points_cycle_div*n_cycles;

# Circuit polarization parameters
Vref = 5;                               % Vref for ADC converter;
gnd = 0;                                % gnd for ADC converter;
Vk_rms = 26;                            % Vf of power signal [Vrms]
N1 = 2000;                              % sensor parameters
N2 = 1;                                 % sensor parameters
RL = 688;                               % Resistence of load [Ohms];
IL_rms = Vk_rms/RL;
ISp = (N2/N1)*sqrt(2)*IL_rms;           % Signal amplitude [V]
IS_rms = ISp*sqrt(2);

IS = ISp*sin(w*t+phi);                  % Continuous signal build.

%% Dicrete signal reformulation
VSp = ISp*Rb;                           % Peak value;
VS = IS*Rb;
maxDecValue = 2^n_bits;                 % Maximum decimal value given n n_bits;

% 255 -------  +VSp
% 0   -------  -VSp

vk = round(VS*(maxDecValue-1)/5 + maxDecValue/2);
% (x-0)   =   255-0
% V-(-Vp)   +Vp - (-Vp)
% vk = round((maxDecValue*(vd+Vp))/(2*Vp));   % Discrete signal

%% Simulated Dicrete signal reformulation adding a prescaled at sample rate
tks = linspace(0,1/f_signal*n_cycles,n_points/divScale); % Signal time vector;
vks = round(interp1(t,vk,tks));                        % Signal with prescale factor;
% vks = resample(vk,1,divScale);
% Irms calculation

%% Irms calculation for vk
s  = vk;                                    % signal selection
iD = round(s - (mean(s)-maxDecValue/2));    % Offset remove.
vs1 = iD.*Vref/maxDecValue;                 %
vs = vs1 - mean(vs1);                       %
Vk_rms = sqrt(mean(abs(vs).^2));
Ik_rms = k3*Vk_rms/Rb;

%% Irms calculation for vks
s  = vks;                                   % signal selection
iD = round(s - (mean(s)-maxDecValue/2));    % Offset remove.
vs1 = iD.*Vref/maxDecValue;                 %
vs = vs1 - mean(vs1);                       %
Vks_rms = sqrt(mean(abs(vs).^2));
Iks_rms = k3*Vks_rms/Rb;

%% Irms calculation for Signal Captured (s7)
% s  = s7;                                    % signal selection
% iD = round(s - (mean(s)-maxDecValue/2));    % Offset remove.
% vs1 = iD.*Vref/maxDecValue;                 %
% vs = vs1 - mean(vs1);                       %
% Vks_rms = sqrt(mean(abs(vs).^2));
% Iksr_rms = k3*Vks_rms/R;

fprintf('---- Signal ----\n');
fprintf('Fs          : %d S/s\n', Fs);
fprintf('Points/Cycle: %d\n', n_points_cycle);
fprintf('n_points     : %d\n', n_points);
% fprintf('Irms        : %f\n', Ik_rms);

fprintf('\n---- Simulated Captured Points ----\n');
fprintf('Fs          : %d S/s\n', Fs_div);
fprintf('Points/Cycle: %d\n', round(n_points_cycle_div));
fprintf('n_points     : %d\n', round(nPoints_div));
% fprintf('Irms        : %f\n', Iks_rms);

fprintf('\n---- Captured Points ----\n');
fprintf('Fs          : %d S/s\n', Fs_div);
fprintf('Points/Cycle: %d\n', n_points_cycle_div);
fprintf('n_points     : %d\n', nPoints_div);
% fprintf('Irms        : %f\n', Iksr_rms);


% set(gcf, 'Position', get(0,'Screensize'));

% subplot(4,1,1);
% plot(t,vd,'b')
% ylabel('Vd');
% title('Real Signal')

subplot(3,1,1);
plot(t,vk,'g')
% xlabel('Time');
ylabel('Vk');
title('Real Signal')
% axis([0 t(end) 0 1023])


subplot(3,1,2);
plot(tks,vks,'k')
% xlabel('Time');
ylabel('Vks');
title('Prescaled Signal')
% axis([0 t(end) 0 1023])

% subplot(3,1,3);
% plot(tks,s7,'r')
% xlabel('Time');
ylabel('Vc');
title('Captured Signal')
axis([0 t(end) 0 1023])

% Caracteristicas sensor 1  0 a 20 A
% rela��o 1:2000 com R=300 ohms e Iout =[0 10 mA]




