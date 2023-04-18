%% Start Function
% if isempty(sADC0)
sADC0 = serial('COM4');
set(sADC0,'BaudRate',115200); %115200, 230400, 460800.
set(sADC0,'terminator','LF');
set(sADC0,'InputBufferSize',nSamples);
% set(sADC0,'Timeout',500);

fopen(sADC0);
fprintf('DSO Started!\n');


