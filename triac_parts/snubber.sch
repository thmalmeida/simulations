<Qucs Schematic 0.0.19>
<Properties>
  <View=0,47,800,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=snubber.dat>
  <DataDisplay=snubber.dpl>
  <OpenDisplay=1>
  <Script=snubber.m>
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
  <Vdc V1 1 220 350 -64 -26 1 1 "500 V" 1>
  <IProbe Ir1 1 380 280 -26 16 0 0>
  <Switch S1 1 270 280 -26 11 0 0 "off" 0 "100 ns" 0 "0" 0 "1e12" 0 "26.85" 0 "1e-6" 0 "spline" 0>
  <.TR TR1 1 210 100 0 63 0 0 "lin" 1 "0" 1 "1 us" 1 "1001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <.DC DC1 1 430 100 0 39 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <R R1 1 440 350 15 -26 0 1 "1.2 mOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 440 590 0 0 0 0>
  <GND * 1 220 590 0 0 0 0>
  <VProbe Vc1 1 620 340 -16 28 0 3>
  <R R2 1 440 540 15 -26 0 1 "80.67 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C1 1 440 470 17 -26 0 1 "10 nF" 1 "" 0 "neutral" 0>
</Components>
<Wires>
  <300 280 350 280 "" 0 0 0 "">
  <220 280 220 320 "" 0 0 0 "">
  <220 280 240 280 "" 0 0 0 "">
  <410 280 440 280 "" 0 0 0 "">
  <440 280 440 300 "" 0 0 0 "">
  <220 380 220 590 "" 0 0 0 "">
  <440 380 440 400 "" 0 0 0 "">
  <440 300 440 320 "" 0 0 0 "">
  <440 300 570 300 "" 0 0 0 "">
  <570 300 570 330 "" 0 0 0 "">
  <570 330 600 330 "" 0 0 0 "">
  <570 350 600 350 "" 0 0 0 "">
  <570 350 570 400 "" 0 0 0 "">
  <440 400 570 400 "" 0 0 0 "">
  <440 400 440 440 "" 0 0 0 "">
  <440 500 440 510 "" 0 0 0 "">
  <440 570 440 590 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
