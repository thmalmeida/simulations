<Qucs Schematic 0.0.20>
<Properties>
  <View=0,0,990,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=maquina_sincrona.dat>
  <DataDisplay=maquina_sincrona.dpl>
  <OpenDisplay=1>
  <Script=maquina_sincrona.m>
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
  <.DC DC1 1 830 280 0 37 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.TR TR1 1 830 90 0 59 0 0 "lin" 1 "32 ms" 1 "80 ms" 1 "501" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <R RL 1 600 250 15 -26 0 1 "4 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vac Ea 1 260 250 -152 -26 1 1 "179.6051 V" 1 "60 Hz" 0 "0" 0 "0" 0>
  <GND * 5 260 300 0 0 0 0>
  <L Ls 1 330 200 -26 -60 1 0 "5 mH" 1 "" 0>
  <R Rs 1 430 200 -26 -65 1 0 "4 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <IProbe Is 1 520 200 -26 16 0 0>
</Components>
<Wires>
  <600 280 600 300 "" 0 0 0 "">
  <260 300 600 300 "" 0 0 0 "">
  <260 280 260 300 "" 0 0 0 "">
  <260 200 260 220 "" 0 0 0 "">
  <260 200 300 200 "" 0 0 0 "">
  <360 200 400 200 "" 0 0 0 "">
  <600 200 600 220 "" 0 0 0 "">
  <550 200 600 200 "" 0 0 0 "">
  <460 200 490 200 "" 0 0 0 "">
  <260 200 260 200 "Ea" 220 170 0 "">
  <600 200 600 200 "Va" 560 160 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Rectangle 580 190 130 120 #000000 0 1 #c0c0c0 1 0>
</Paintings>
