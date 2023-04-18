close all
set(gcf, 'Position', get(0,'Screensize'));

R1 = 100e3;
R2 = 2.2e3;
Vref = 5;
Voffset = Vref/2;
% Voffset = 0;

% fwrite(sADC0,'$1:005:0:0064;');
% pause(0.1);
% fwrite(sADC0,'$2:0:0060:4:128:2;');

for i=0:5000
    fwrite(sADC0,'$00;');
%     pause(0.1);
    x = fread(sADC0,nSamples, 'uint8');     % Read n hex samples o 8 bits;
    vk = 5*x/255;                           % convert hex to 0-5 V;
    s  = x;                                 % Keep x vector;
    
%     iD = round(s-(mean(s)-maxDecValue/2));  % round to integer???;
%     vs1 = iD.*Vref/maxDecValue;             %   ????
%     vs = vs1 - mean(vs1);                   %   ????
%     Vks_rms = sqrt(mean(abs(vs).^2));       % Taking RMS Voltage
%     Iksr_rms = k3*Vks_rms/R;                % Taking RMS Current


%     Vin = (R1+R2)/(R2)*(vk - Voffset);      % EQUATION!!!
    Vin = vk + (R1*vk - R1*Voffset)/R2;

    drawnow;
%     plot(t,vk,'b','LineWidth',2)
    plot(t,Vin,'b','LineWidth',2)
    hold on

%     text1 = text(0.060,0.14,sprintf('Irms: %2.2f',Iksr_rms));
%     set(text1,'fontweight','bold');
%     text2 = text(0.07,0.14,sprintf('Savg: %2.2f',Savg));
%     set(text2,'fontweight','bold');

    vk_absMax = max(Vin);
    vk_absMin = min(Vin);
    vk_mean   = mean(Vin);
    lineMax = vk_absMax*ones(1,nSamples);
    lineMin = vk_absMin*ones(1,nSamples);
    plot(t,lineMax,'k--');
    plot(t,lineMin,'k--');
    
    VaxisMin = (R1+R2)/(R2)*(0 - Voffset);
    VaxisMax = (R1+R2)/(R2)*(Vref - Voffset);

    vk_error =  abs(VaxisMax - VaxisMin)*0.01;
    
    if((vk_absMax - vk_absMin) > vk_error)
        text3 = text(t(end)*1.007,vk_absMax,sprintf('Vmax: %2.2f',vk_absMax));
        set(text3,'fontweight','bold');
    
        text4 = text(t(end)*1.007,vk_absMin,sprintf('Vmin: %2.2f',vk_absMin));
        set(text4,'fontweight','bold');
        
        Vpp = vk_absMax - vk_absMin;
        text6 = text(t(end)*1.007,(vk_absMax+vk_absMin)/2,sprintf('Vpp: %2.2f',Vpp));
        set(text6,'fontweight','bold');
    else
        text5 = text(t(end)*1.007,vk_mean,sprintf('Vavg: %2.2f',vk_mean));
        set(text5,'fontweight','bold');
    end
    


    xlabel('Time');
    ylabel('Amplitude');
    title('DSO - Real Signal')
    
    axis([0 t(end) VaxisMin*1.10 VaxisMax*1.1])
    
    grid on
    hold off;
end
