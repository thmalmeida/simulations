# ADC conversion simulation to use with some microcontrollers
# thmalmeida
# edited on 20220423

# To load package signal, run 'pkg load signal' and load dsp functions like resample.

% Caracteristicas sensor 1  0 a 20 A
% relação 1:2000 com R=300 ohms e Iout =[0 10 mA]
%		__Vmax
%		|
%		|
%
%
%
%
% workspace reset
clc, clear all, clf

% Setup select.
id = 2;

# stm32F103 ADC clock parameters - clk = F_clk MHz, internal div = 128, 13 cycles for ADC conversion.
n_bits = 12;										% ADC conversion resolution;

# ADC Sampling frequency Samples/s
switch id
	case 1													% For ESP32 ADC
		Fs_adc = 21000;										% (ESP32, for example) Uncomment this line to set sample frequency directly;

	case 2													% For ESP32 ADC
		Fs_adc = 21000;										% (ESP32, for example) Uncomment this line to set sample frequency directly;

    case 3 													% stm32f103 uC
		F_clk = 8e6;										% Crystal system clock [Hz];
		div_1 = 1;											% Advanced High-performance Bus (AHB) prescale;
		div_2 = 1;											% Advanced Peripheral Bus (APB) prescale;
		div_3 = 8;											% ADC prescale;
		adc_clk = F_clk/div_1/div_2/div_3;					% ADC clock after all prescalers
		adc_clk_div_list = [1.5 7.5 13.5 28.5 41.5 55.5 71.5 239.5];    % Clock division or sampling time for STM32F103 series
		adc_sampling_time = adc_clk_div_list(8);			% amount of time clock to sample [cycles];
		adc_conv = 12.5;									% Fixed cycles number of ADC peripheral takes to convert [cycles];
		T_conv = adc_sampling_time + adc_conv;				% ADC conversion time [cycles];
		Fs_adc = adc_clk/T_conv;							% ADC sampling rate [samples/s];

	case 4
		% Atmega328P ADC
		% divFc = 128;										% uC dision factor; (atmega328)
		% divScale = 16;									% software prescale factor; (atmega328)
		% Fs_adc = F_clk/divFc/13;							% Sample rate; (it is for atmega328)
		% Fs_div = Fs_adc/divScale;					    	% Sample rate with prescale;
    otherwise

end

# After find de sample frequency, we have the sampling interval
Ts_adc = 1/Fs_adc;									% Sample time [s];

# Teorical periodic signal construction
f_signal = 60;										% Frequency of sinal;
n_cycles = 1;										% Number of cycles;
T_signal = 1/f_signal;								% Signal period [s]
w = 2*pi*f_signal;									% Angular frequency [rad/s]
phi = -75*pi/180;									% Phase

# Number of points per cycle definition based on sample rate or fixed
n_points_cycle_2 = T_signal/Ts_adc;					% Number of points per cycle;
n_points_cycle = Fs_adc/f_signal;					% Number of points per cycle;
n_points = n_points_cycle*n_cycles;					% Number of signal points.
t = linspace(0,1/f_signal*n_cycles,n_points); 		% Signal time vector [s].

# ESP32 parameters for circuit voltage divider
p(1).Vdc	= 3.3;
p(1).GND	= 0.0;
p(1).Vmax	= 2.45;
p(1).Vmin	= 0.12;
p(1).d_max	=  2895;
p(1).R1		= 56*10^3;
p(1).R2		= 39*10^3;
p(1).Rb1	= 220;
p(1).Rb2	= 75;

# ESP32 1.0.0 board
p(2).Vdc	= 3.3;
p(2).GND	= 0.0;
p(2).Vmax	= 2.45;
p(2).Vmin	= 0.12;
p(2).d_max	= 2895;
p(2).R1		= 180*10^3;
p(2).R2		= 120*10^3;
p(2).Rb1	= 0;
p(2).Rb2	= 120;

# stm32f013
p(3).Vdc	= 3.3;
p(3).GND	= 0.0;
p(3).Vmax	= 3.3;
p(3).Vmin	= 0.0;
p(3).d_max	= 2^n_bits - 1;
p(3).R1		= 68*10^3;
p(3).R2		= 68*10^3;
p(3).Rb1	= 0;
p(3).Rb2	= 220+75;

# Circuit polarization parameters for current sensor
Vdc	    = p(id).Vdc;								% Voltage supply for transducer circuit [V];
GND 	= p(id).GND;								% Groud value [V];
Vmax	= p(id).Vmax;								% Max read value for ADC peripheral [V];
Vmin    = p(id).Vmin;								% Min read value for ADC peripheral [V];
d_max	= p(id).d_max;								% Max value correspond to max bit on linearity
R1		= p(id).R1;									% Voltage divisor top resistor [Ohms];
R2		= p(id).R2;									% Voltage divisor bottom resistor [Ohms];
Rb1		= p(id).Rb1;%+22;
Rb2		= p(id).Rb2;%10+48;							% Burden resistor. Bias.
V_R2	= Vdc*R2/(R1+R2);							% Voltage over R2 [V]. Offset voltage;

N1		= 1;										% Current transformer sensor ration parameters
N2		= 2000;										% Current transformer sensor ration parameters

% iL_rms	= 0.495./sqrt(2)/(Rb1+Rb2)*(N2/N1);			% Load current [A];
iL_rms	= 1.100;									% Load current [A];
ib_rms	= iL_rms*(N1/N2);							% Current burden [A];
ibp     = ib_rms*sqrt(2);							% current peak [A];
ib_t	= ibp*sin(w*t+phi);							% i2 signal [A];
% ib_t	= zeros(1, n_points) + ibp;					% Uncomment for a constant signal [A]
Vb		= (Rb1 + Rb2)*ib_t + V_R2;
% Vadc_t 	= Rb2/(Rb1+Rb2)*(Vb-V_R2)
VRb2_t  = ib_t*Rb2;
Vadc_t	= Rb2*ib_t+V_R2;							% Voltage signal with offset readed by ADC pin;

# ------ Finished the simulated signal ------

% And then, we have a d_out simulated or you can use one real
d_out	= (Vadc_t-Vmin)/(Vmax-Vmin)*(d_max);		% Digital converted value readed by ADC peripheral of uC (simulated);
% d_out 	= zeros(1, n_points) + Vdc;
% d_out 	= round(Vadc_t*(d_max)/(Vdc));			% Voltage signal vector converted to digital value;

% Resample d_out value to graphical visualization
d_out_ss = repelem(d_out, 100);						% super sampling v2_k;
t_ss = linspace(0, t(end), length(t)*100);			% super sampling time vector;

# Finding Vadc_t after ADC read
Vadc_t = (d_out/d_max)*(Vmax-Vmin) + Vmin;

# Converting the digital readed value to the load current in ampers [A];
iL_t = (d_out*(Vmax-Vmin)/(d_max) + Vmin - V_R2)*(1/Rb2)*(N2/N1);

% k1_ = Vdc/(d_max)							% Divided parts to find Irms
% k2_ = R2/(R1+R2)*Vdc
% k3_ = (1/Rb)*(N2/N1)
ib_rms 	= sqrt(sum(ib_t.^2)/length(ib_t));			% Signal current RMS in [A], using the common equation;

iL_rms 	 = sqrt(sum(iL_t.^2)/length(iL_t));			% Load current RMS in [A], using equation;
iL_rms_2 = max(iL_t)/sqrt(2);						% Load current RMS in [A], using the peak value;

% Find first peak value of Vadc_t
Vadc_max = max(Vadc_t);
Vadc_min = min(Vadc_t);
Vadc_pp	= abs(Vadc_max - Vadc_min);

% file0 = "s_vec.txt";
% fid = fopen (file0, "w");
% fprintf(fid, " %d,", v2_k);
% fclose (fid);

%% Simulated Dicrete signal reformulation adding a prescaled at sample rate
% tks = linspace(0,1/f_signal*n_cycles,n_points/divScale); % Signal time vector;
% vks = round(interp1(t,vk,tks));                        % Signal with prescale factor;
% vks = resample(vk,1,divScale);
% Irms calculation

%% Irms calculation for vk
% s  = vk;                                    % signal selection
% iD = round(s - (mean(s)-maxDecValue/2));    % Offset remove.
% vs1 = iD.*Vdc/maxDecValue;                 %
% vs = vs1 - mean(vs1);                       %
% Vk_rms = sqrt(mean(abs(vs).^2));
% Ik_rms = k3*Vk_rms/Rb;

%% Irms calculation for vks
% s  = vks;                                   % signal selection
% iD = round(s - (mean(s)-maxDecValue/2));    % Offset remove.
% vs1 = iD.*Vdc/maxDecValue;                 %
% vs = vs1 - mean(vs1);                       %
% Vks_rms = sqrt(mean(abs(vs).^2));
% Iks_rms = k3*Vks_rms/Rb;

%% Irms calculation for Signal Captured (s7)
% s  = s7;                                    % signal selection
% iD = round(s - (mean(s)-maxDecValue/2));    % Offset remove.
% vs1 = iD.*Vdc/maxDecValue;                 %
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

experimental_data_script											% Load experimental data
vf = v4f;															% Experimental signal selection;

Vadc2_t = vf*(Vmax-Vmin)/(d_max) + Vmin;							% Voltage on Rb2 resistor;
iL2_t_dc = (vf*(Vmax-Vmin)/(d_max) + Vmin - V_R2)*(1/Rb2)*(N2/N1);
iL2_t = dc_remove(iL2_t_dc);										% DC offset remove before RMS calculation;
% iL2_t = iL2_t_dc;
iL2_rms = sqrt(sum(iL2_t.^2)/length(iL2_t));						% Load current RMS in [A], using equation;
printf("iL2_rms: %.3f\n", iL2_rms);
% set(gcf, 'Position', get(0,'Screensize'));

% subplot(4,1,1);
% plot(t,vd,'b')
% ylabel('Vd');
% title('Real Signal')
subplot(3,1,1);
plot(t,Vadc_t,'g')
hold on
plot(t, Vadc2_t, 'r');
line ([t(1) t(end)], [V_R2 V_R2], "linestyle", "-", "color", "k")
line ([t(1) t(end)], [Vadc_max Vadc_max], "linestyle", "--", "color", "k")
line ([t(1) t(end)], [Vadc_min Vadc_min], "linestyle", "--", "color", "k")

text1 = text(t(end)*1.007,V_R2,sprintf('Vref: %2.2f', V_R2));
text2 = text(t(end)/2*1.00, Vadc_max+0.15, sprintf('Vmax: %2.2f', Vadc_max));
text3 = text(t(end)/2*1.20, Vadc_min+0.15, sprintf('Vmin: %2.2f', Vadc_min));
set(text1,'fontweight','bold');
% xlabel('Time');
ylabel('VRb(t)');
xlabel('time [s]');
title('Voltage on Rb resistor readed by ADC peripheral');
% axis([0 t(end) (GND-0.2) Vdc])
h = legend("simulated", "experimental");
legend(h, "location", "northeast");	% northeastoutside
set (h, "fontsize", 12);
grid on

subplot(3,1,2);
plot(t,d_out,'k*');
hold on
% plot(t, v1, 'b');
xlabel('Time');
ylabel('v2_k');
title('Digital Signal')
axis([0 t(end) 0 (2^n_bits-1)])
grid on


% Super amostragem plot
subplot(3,1,3);
plot(t_ss, d_out_ss,'r')
xlabel('Time');
ylabel('dig');
title('Captured Signal')
axis([0 t(end) 0 (2^n_bits-1)])
grid on

% Experimental
% subplot(3,1,3);
% plot(t, iL_t);
% hold on;
% plot(t, iL2_t);


printf("Vref: %.3f V\n", V_R2);
printf("Vadc_min: %.3f V\n", Vadc_min);
printf("Vadc_max: %.3f V\n", Vadc_max);
printf("Ib_rms: %.1f mA\n", ib_rms*1000);
printf("Irms: %.3f A (simulated)\n", iL_rms);
printf("Irms: %.3f A (experimental)\n", iL2_rms);
