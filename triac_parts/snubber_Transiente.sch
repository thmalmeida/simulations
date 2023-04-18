<Qucs Schematic 0.0.19>
<Properties>
  <View=-41,-45,1008,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=snubber_Transiente.dat>
  <DataDisplay=snubber_Transiente.dpl>
  <OpenDisplay=1>
  <Script=snubber_Transiente.m>
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
  <Vac V1 0 60 130 -81 -26 1 1 "311 V" 1 "5 MHz" 0 "0" 0 "0" 0>
  <IProbe Iz 0 100 20 -26 16 0 0>
  <R R1 0 140 70 15 -26 0 1 "39 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C1 0 140 150 17 -26 0 1 "10 nF" 1 "0" 0 "neutral" 0>
  <GND * 0 60 200 0 0 0 0>
  <GND * 0 140 200 0 0 0 0>
  <Eqn Eqn1 0 110 270 -31 16 0 0 "Iz_rms=rms(Iz.It)" 1 "yes" 0>
  <.TR TR1 0 50 340 0 63 0 0 "lin" 1 "0" 1 "1 us" 1 "1001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <.DC DC1 1 760 -10 0 39 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <GND * 1 360 200 0 0 0 0>
  <GND * 1 440 200 0 0 0 0>
  <IProbe Iz2 1 400 20 -26 16 0 0>
  <Eqn Eqn2 1 390 270 -31 16 0 0 "Iz_rms=rms(Iz2.It)" 1 "yes" 0>
  <R R2 1 440 70 15 -26 0 1 "39 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 0 800 280 0 0 0 0>
  <C C3 0 800 230 17 -26 0 1 "42 pF" 1 "0" 0 "neutral" 0>
  <R R3 0 800 150 15 -26 0 1 "50 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C2 1 440 150 17 -26 0 1 "10 nF" 1 "0" 0 "neutral" 0>
  <.TR TR2 1 360 340 0 63 0 0 "lin" 1 "0" 1 "0.6 ms" 1 "1001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <Vac V2 1 360 130 -81 -26 1 1 "311 V" 1 "6  kHz" 0 "0" 0 "0" 0>
</Components>
<Wires>
  <60 20 60 100 "" 0 0 0 "">
  <60 20 70 20 "" 0 0 0 "">
  <130 20 140 20 "" 0 0 0 "">
  <140 20 140 40 "" 0 0 0 "">
  <140 100 140 120 "" 0 0 0 "">
  <140 180 140 200 "" 0 0 0 "">
  <60 160 60 200 "" 0 0 0 "">
  <360 20 360 100 "" 0 0 0 "">
  <360 20 370 20 "" 0 0 0 "">
  <430 20 440 20 "" 0 0 0 "">
  <440 20 440 40 "" 0 0 0 "">
  <360 160 360 200 "" 0 0 0 "">
  <790 100 800 100 "" 0 0 0 "">
  <800 100 800 120 "" 0 0 0 "">
  <800 180 800 200 "" 0 0 0 "">
  <800 260 800 280 "" 0 0 0 "">
  <440 100 440 120 "" 0 0 0 "">
  <440 180 440 200 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
