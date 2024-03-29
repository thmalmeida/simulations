<Qucs Schematic 1.0.1>
<Properties>
  <View=-20,-300,1399,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=square_to_sine.dat>
  <DataDisplay=square_to_sine.dpl>
  <OpenDisplay=1>
  <Script=square_to_sine.m>
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
  <.DC DC1 1 1170 50 0 48 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.TR TR1 1 1170 150 0 81 0 0 "lin" 1 "0" 1 "32 ms" 1 "2001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <R R5 1 980 210 15 -26 0 1 "10 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 180 320 0 0 0 0>
  <Vrect V1 1 180 210 18 -26 0 1 "12 V" 1 "8 ms" 1 "8 ms" 1 "1 ns" 0 "1 ns" 0 "0 ns" 0>
  <C C4 2 910 120 -26 -65 0 2 "330 nF" 1 "" 0 "neutral" 0>
  <OpAmp OP1 1 480 120 -26 -90 1 0 "1e6" 1 "15 V" 0>
  <R R7 0 490 -10 -26 -63 1 0 "2 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C6 2 350 100 -26 -65 0 2 "2 uF" 1 "" 0 "neutral" 0>
  <R R6 2 770 120 -26 15 0 0 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R8 1 230 100 -26 -63 1 0 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C7 1 180 130 -81 -26 0 3 "100 nF" 1 "" 0 "neutral" 0>
  <C C5 1 490 -100 -26 -65 0 2 "100 nF" 1 "" 0 "neutral" 0>
</Components>
<Wires>
  <980 240 980 320 "" 0 0 0 "">
  <980 120 980 180 "" 0 0 0 "">
  <940 120 980 120 "" 0 0 0 "">
  <180 320 440 320 "" 0 0 0 "">
  <180 240 180 320 "" 0 0 0 "">
  <180 100 200 100 "" 0 0 0 "">
  <440 140 450 140 "" 0 0 0 "">
  <440 320 980 320 "" 0 0 0 "">
  <440 140 440 320 "" 0 0 0 "">
  <520 120 560 120 "Vb" 600 90 40 "">
  <560 -10 560 120 "" 0 0 0 "">
  <420 100 450 100 "" 0 0 0 "">
  <420 -10 420 100 "" 0 0 0 "">
  <420 -100 420 -10 "" 0 0 0 "">
  <420 -100 460 -100 "" 0 0 0 "">
  <560 -100 560 -10 "" 0 0 0 "">
  <520 -100 560 -100 "" 0 0 0 "">
  <520 -10 560 -10 "" 0 0 0 "">
  <420 -10 460 -10 "" 0 0 0 "">
  <260 100 320 100 "" 0 0 0 "">
  <380 100 420 100 "" 0 0 0 "">
  <800 120 880 120 "" 0 0 0 "">
  <560 120 740 120 "" 0 0 0 "">
  <180 160 180 180 "" 0 0 0 "">
  <980 120 980 120 "Vout" 1010 90 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
