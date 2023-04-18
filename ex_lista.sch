<Qucs Schematic >
<Properties>
  <View=94,-219,1591,955,1,0,0>
  <Grid=10,10,1>
  <DataSet=ex_lista.dat>
  <DataDisplay=ex_lista.dpl>
  <OpenDisplay=1>
  <Script=ex_lista.m>
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
  <GND * 5 230 440 0 0 0 0>
  <R R8 1 540 380 15 -26 0 1 "Ry" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vdc V1 1 230 340 18 -26 0 1 "220 V" 1>
  <IProbe I_RL 1 540 290 -47 -26 0 3>
  <IProbe I3 1 720 290 -47 -26 0 3>
  <IProbe I1 1 410 240 -26 41 0 0>
  <R R6 1 720 380 15 -26 0 1 "5 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <.DC DC1 1 1000 50 0 46 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Eqn Power1 1 680 -20 -38 19 0 0 "P_RL=Ry*I_RL.I^2" 1 "yes" 0>
  <Eqn PowerMax 1 680 110 -38 19 0 0 "P_max=max(P_RL)" 1 "yes" 0>
  <.SW SW1 1 1000 140 0 77 0 0 "DC1" 1 "lin" 1 "Ry" 1 "100 Ohm" 1 "0.004 Ohm" 1 "1001" 1>
  <R R7 1 300 240 -26 -61 0 2 "0.5 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
</Components>
<Wires>
  <720 410 720 440 "" 0 0 0 "">
  <540 440 720 440 "" 0 0 0 "">
  <230 440 540 440 "" 0 0 0 "">
  <540 410 540 440 "" 0 0 0 "">
  <540 240 540 260 "" 0 0 0 "">
  <230 370 230 440 "" 0 0 0 "">
  <230 240 270 240 "" 0 0 0 "">
  <230 240 230 310 "" 0 0 0 "">
  <540 320 540 350 "" 0 0 0 "">
  <720 320 720 350 "" 0 0 0 "">
  <540 240 720 240 "" 0 0 0 "">
  <720 240 720 260 "" 0 0 0 "">
  <440 240 540 240 "" 0 0 0 "">
  <330 240 380 240 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
