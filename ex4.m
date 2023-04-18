Vs = 220;


RL = 0.001:0.001:50;
P_RL = (Vs*5)^2*(RL)./(49*RL.^2+140*RL+100);

plot(RL, P_RL)
hold on;
grid on;