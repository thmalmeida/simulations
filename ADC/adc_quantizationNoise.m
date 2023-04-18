clc, clear all
load('s1_s2_s3_s4_s5_s6_s7_20140522')

n_Cycles            = 0.5;            % Number of cycles;
f                   = 500e6;
n_PointsPerCycle    = 100000;
Fs                  = f*n_PointsPerCycle;
Vp                  = 0.5;
w                   = 2*pi*f;
phi                 = 0;

t                   = 0:1/Fs:(1/f)*n_Cycles;
Vt = Vp*sin(w*t+phi);

n_bits              = 4;
qLevel              = 2^n_bits;

% Quantized Values
Vq = round((2^n_bits - 1)*(Vt - (-Vp))/(2*Vp));

% Quantized converted values
Vk = 2*Vp*Vq/(2^n_bits - 1) - Vp;

qNoise = Vk - Vt;

subplot(2,1,1)
plot(t,Vt,'b',t,Vk,'r',t,qNoise,'k');
subplot(2,1,2)
plot(t,qNoise,'k')
% plot(t,Vq,'r')
