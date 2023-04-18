<Qucs Schematic 0.0.17>
<Properties>
  <View=0,-13,948,576,1,0,0>
  <Grid=10,10,1>
  <DataSet=cap-meas.dat>
  <DataDisplay=cap-meas.dpl>
  <OpenDisplay=1>
  <Script=cap-meas.m>
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
  <GND * 1 580 260 0 0 0 0>
  <R R1 1 410 140 -26 -47 0 2 "47 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C1 1 580 200 17 -26 0 1 "1 nF" 1 "0" 0 "neutral" 0>
  <.TR TR1 1 730 30 0 63 0 0 "lin" 1 "0" 1 "2 u" 1 "2000" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vrect V1 1 220 200 18 -26 0 1 "10 V" 1 "0.5 us" 1 "1 us" 1 "0.5 ns" 0 "0.5 ns" 0 "0 ns" 0>
  <GND * 1 580 480 0 0 0 0>
  <Vrect V2 1 220 420 18 -26 0 1 "10 V" 1 "0.5 us" 1 "1 us" 1 "0.5 ns" 0 "0.5 ns" 0 "0 ns" 0>
  <R R2 1 580 420 -78 -26 0 3 "47 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <L L1 1 410 360 -26 -42 0 2 "1 uH" 1 "" 0>
</Components>
<Wires>
  <220 140 220 170 "" 0 0 0 "">
  <220 140 380 140 "" 0 0 0 "">
  <440 140 580 140 "" 0 0 0 "">
  <580 140 580 170 "" 0 0 0 "">
  <580 230 580 260 "" 0 0 0 "">
  <220 230 220 260 "" 0 0 0 "">
  <220 260 580 260 "" 0 0 0 "">
  <220 360 220 390 "" 0 0 0 "">
  <220 360 380 360 "" 0 0 0 "">
  <440 360 580 360 "" 0 0 0 "">
  <580 360 580 390 "" 0 0 0 "">
  <580 450 580 480 "" 0 0 0 "">
  <220 450 220 480 "" 0 0 0 "">
  <220 480 580 480 "" 0 0 0 "">
  <580 140 580 140 "Vc_out" 610 110 0 "">
  <580 360 580 360 "Vl_out" 610 330 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
