<Qucs Schematic >
<Properties>
  <View=0,-60,1052,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=exp01 - Contator - Acionamento resistivo.dat>
  <DataDisplay=exp01 - Contator - Acionamento resistivo.dpl>
  <OpenDisplay=1>
  <Script=exp01 - Contator - Acionamento resistivo.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 5 320 480 0 0 0 0>
  <R R1 1 540 430 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND *1 5 540 480 0 0 0 0>
  <Switch K_L1 1 540 230 11 -26 0 1 "off" 0 "1 ms" 0 "0" 0 "1e12" 0 "26.85" 0 "1e-6" 0 "spline" 0>
  <L L1 1 770 430 10 -26 0 1 "1 nH" 1 "" 0>
  <Switch B2 1 770 330 11 -26 0 1 "on" 0 "1 ms" 0 "0" 0 "1e12" 0 "26.85" 0 "1e-6" 0 "spline" 0>
  <Switch B1 1 770 230 11 -26 0 1 "off" 0 "1 ms" 0 "0" 0 "1e12" 0 "26.85" 0 "1e-6" 0 "spline" 0>
  <GND *2 5 770 480 0 0 0 0>
  <Switch K_NO 1 620 230 11 -26 0 1 "off" 0 "1 ms" 0 "0" 0 "1e12" 0 "26.85" 0 "1e-6" 0 "spline" 0>
  <Vac V1 1 320 310 -96 -26 1 1 "179,6052 V" 1 "60 Hz" 0 "0" 0 "0" 0>
</Components>
<Wires>
  <540 260 540 400 "" 0 0 0 "">
  <540 460 540 480 "" 0 0 0 "">
  <540 140 540 200 "" 0 0 0 "">
  <540 140 620 140 "" 0 0 0 "">
  <770 360 770 400 "" 0 0 0 "">
  <770 460 770 480 "" 0 0 0 "">
  <770 140 770 200 "" 0 0 0 "">
  <770 260 770 280 "" 0 0 0 "">
  <770 280 770 300 "" 0 0 0 "">
  <620 280 770 280 "" 0 0 0 "">
  <620 140 770 140 "" 0 0 0 "">
  <620 140 620 200 "" 0 0 0 "">
  <620 260 620 280 "" 0 0 0 "">
  <320 340 320 480 "" 0 0 0 "">
  <320 140 540 140 "" 0 0 0 "">
  <320 140 320 280 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
