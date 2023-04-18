<Qucs Schematic 0.0.20>
<Properties>
  <View=55,-70,1269,697,1,0,0>
  <Grid=10,10,1>
  <DataSet=circuito_RC.dat>
  <DataDisplay=circuito_RC.dpl>
  <OpenDisplay=1>
  <Script=circuito_RC.m>
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
  <.TR TR1 1 1040 10 0 73 0 0 "lin" 1 "16.6667 ms" 1 "70 ms" 1 "501" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <C C1 1 600 270 17 -26 1 3 "10 nF" 1 "0" 0 "neutral" 0>
  <R R1 1 600 190 15 -26 1 3 "39 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 5 360 380 0 0 0 0>
  <VProbe Vs1 1 200 210 -31 28 1 3>
  <IProbe I1 1 500 140 -26 16 0 0>
  <Eqn I1_rms 1 550 410 -41 18 0 0 "I1=rms(I1.It)" 1 "yes" 0>
  <Eqn V1_rms 1 730 420 -41 18 0 0 "V1=rms(Vs1.Vt)" 1 "yes" 0>
  <Vac VS1 1 360 220 -129 -26 1 1 "33.942 V" 1 "60 Hz" 0 "0" 0 "0" 0>
</Components>
<Wires>
  <600 300 600 320 "" 0 0 0 "">
  <600 220 600 240 "" 0 0 0 "">
  <600 140 600 160 "" 0 0 0 "">
  <530 140 600 140 "" 0 0 0 "">
  <360 320 600 320 "" 0 0 0 "">
  <360 320 360 380 "" 0 0 0 "">
  <360 250 360 320 "" 0 0 0 "">
  <360 140 470 140 "" 0 0 0 "">
  <360 140 360 190 "" 0 0 0 "">
  <220 320 360 320 "" 0 0 0 "">
  <220 220 220 320 "" 0 0 0 "">
  <220 140 360 140 "" 0 0 0 "">
  <220 140 220 200 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Rectangle 550 150 170 150 #000000 0 1 #c0c0c0 1 0>
  <Text 730 230 12 #000000 0 "Z_1">
  <Text 370 390 12 #000000 0 "Ref.">
</Paintings>
