##  [x, y] = meshgrid (1:2:20);
##          h = quiver (x, y, sin (2*pi*x/10), sin (2*pi*y/10));
##          set (h, "maxheadsize", 0.1);
##clc, clear all, close all


f = 60;                           % frequency [Hz]
w = 2*pi*f;                       % angular frequency[rad/s]
n = 1;                            % number of periods
npoints = 41;                    % number of points on curve
t = linspace(0,(1/f)*n,npoints);  % time vector [s];
Ip = 10;                          % Amplitude [A]
angle1 = 0;                       % phase's angle in degrees;
angle2 = 5;                      % phase's angle in degrees;
phi1 = angle1*(pi/180);           % fase in radians
phi2 = angle2*(pi/180);           % fase in radians

itp = Ip.*sin(w.*t+phi1);         % current signal [A]
ita = Ip.*sin(w.*t+phi2);         % current signal [A]


subplot (4, 4, [1 8],'replace')

subplot (4, 4, [9 16],'replace')

set(gcf, 'Position', [20, 20, 920, 900])

for i=2:length(itp)
  subplot (4,4,[1,2,5,6])
  axis([-1.2*Ip,+1.2*Ip,-1.2*Ip,+1.2*Ip]);
  title("Fluxo Magnético Girante");
  hold on
  plot(itp(i),ita(i))
  qr1 = quiver(0,0,itp(i-1),ita(i-1),0,'w');
  set(qr1,"maxheadsize", 0.035);
  qr2 = quiver(0,0,itp(i),ita(i),0,'k');
  set(qr2,"maxheadsize", 0.035);
  
  subplot (4,4,[3,4,7,8],'replace')
  axis([-1.2*Ip,+1.2*Ip,-1.2*Ip,+1.2*Ip]);
  title("Componentes de Fluxo Magnético");
  hold on
  q = quiver(0,0,itp(i),ita(i),0,'k','LineWidth',2);
  set(q,"maxheadsize", 0.035);
  
  qx = quiver(0,0,itp(i),0,0,'b');
  set(qx,"maxheadsize", 0.035);

  qy = quiver(0,0,0,ita(i),0,'r');
  set(qy,"maxheadsize", 0.035);

##  set(gca,'XLim',[-40 40]);
  
 
  subplot (4, 4, [9 16])
  title("Corrente nos enrolamentos");
  axis([0,t(length(t)),-Ip,+Ip]);
  plot(t(i),itp(i),'b');
  hold on
  plot(t(i),ita(i),'r');
  grid on;
  legend("Iprincipal", "Iaux");
##  plot([t(i) t(i)],[-Ip +Ip],'1')
  pause(0.0001);
endfor
