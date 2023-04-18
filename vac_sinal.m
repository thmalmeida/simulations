f = 60;                           % frequency [Hz]
w = 2*pi*f;                       % angular frequency[rad/s]
n = 2;                            % number of periods
npoints = 101;                    % number of points on curve
t = linspace(0,(1/f)*n,npoints);  % time vector [s];
Vp = 180;                         % Amplitude [V]
angle = 30;                       % phase's angle in degrees;
phi = angle*(pi/180);             % fase in radians

vt = Vp.*sin(w.*t+phi);            % Voltage signal [V]

plot(t, vt)                      % Plotar o gráfico t x vt
grid on