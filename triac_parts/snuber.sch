<Qucs Schematic 0.0.20>
<Properties>
  <View=0,0,958,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=snuber.dat>
  <DataDisplay=snuber.dpl>
  <OpenDisplay=1>
  <Script=snuber.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Título>
  <FrameText1=Desenhado por:>
  <FrameText2=Data:>
  <FrameText3=Revisão:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <GND * 5 380 460 0 0 0 0>
  <Vdc V1 1 160 350 -64 -26 1 1 "500 V" 1>
  <GND * 5 160 460 0 0 0 0>
  <IProbe Ir 1 320 280 -26 16 0 0>
  <VProbe Vc 1 530 330 -16 28 0 3>
  <Switch S1 1 210 280 -26 11 0 0 "off" 0 "100 ns" 0 "0" 0 "1e12" 0 "26.85" 0 "1e-6" 0 "spline" 0>
  <C C1 1 380 330 17 -26 0 1 "10 nF" 1 "0" 1 "neutral" 0>
  <.DC DC1 1 370 100 0 44 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.TR TR1 1 150 100 0 73 0 0 "lin" 1 "0" 1 "1 ms" 1 "1001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <R R1 1 380 410 15 -26 0 1 "1000 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
</Components>
<Wires>
  <380 440 380 460 "" 0 0 0 "">
  <160 380 160 460 "" 0 0 0 "">
  <380 280 380 290 "" 0 0 0 "">
  <240 280 290 280 "" 0 0 0 "">
  <160 280 160 320 "" 0 0 0 "">
  <160 280 180 280 "" 0 0 0 "">
  <350 280 380 280 "" 0 0 0 "">
  <480 320 510 320 "" 0 0 0 "">
  <480 290 480 320 "" 0 0 0 "">
  <380 290 480 290 "" 0 0 0 "">
  <380 290 380 300 "" 0 0 0 "">
  <380 360 380 370 "" 0 0 0 "">
  <380 370 380 380 "Vout" 320 370 2 "">
  <380 370 480 370 "" 0 0 0 "">
  <480 340 480 370 "" 0 0 0 "">
  <480 340 510 340 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
