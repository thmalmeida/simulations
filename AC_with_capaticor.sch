<Qucs Schematic 1.0.1>
<Properties>
  <View=0,0,1122,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=AC_with_capaticor.dat>
  <DataDisplay=AC_with_capaticor.dpl>
  <OpenDisplay=1>
  <Script=AC_with_capaticor.m>
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
  <Vac V1 1 280 150 -115 -26 1 1 "33.94 V" 1 "60 Hz" 0 "0" 0 "0" 0>
  <R R2 1 410 80 -26 -63 0 2 "1 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R1 1 700 150 15 -26 0 1 "184.62 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C1 1 520 150 17 -26 0 1 "8 uF" 1 "" 0 "neutral" 0>
  <GND * 1 700 220 0 0 0 0>
  <.TR TR1 1 930 40 0 81 0 0 "lin" 1 "0" 1 "33 ms" 1 "501" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <IProbe I_L 1 610 80 -26 16 0 0>
</Components>
<Wires>
  <280 80 280 120 "" 0 0 0 "">
  <280 80 380 80 "" 0 0 0 "">
  <440 80 520 80 "" 0 0 0 "">
  <700 80 700 120 "" 0 0 0 "">
  <700 180 700 220 "" 0 0 0 "">
  <280 220 520 220 "" 0 0 0 "">
  <280 180 280 220 "" 0 0 0 "">
  <520 220 700 220 "" 0 0 0 "">
  <520 180 520 220 "" 0 0 0 "">
  <520 80 580 80 "" 0 0 0 "">
  <520 80 520 120 "" 0 0 0 "">
  <640 80 700 80 "" 0 0 0 "">
  <700 80 700 80 "Vout" 730 50 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
