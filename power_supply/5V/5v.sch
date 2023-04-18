<Qucs Schematic 0.0.20>
<Properties>
  <View=274,-179,1307,425,1,0,0>
  <Grid=10,10,1>
  <DataSet=5v.dat>
  <DataDisplay=5v.dpl>
  <OpenDisplay=1>
  <Script=5v.m>
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
  <Lib D5 1 940 310 -33 5 0 3 "Z-Diodes" 0 "1N4733A" 0>
  <IProbe IZ 1 940 230 -29 -26 0 3>
  <IProbe IR 1 1140 230 -32 -26 0 3>
  <GND * 5 1140 360 0 0 0 0>
  <C C2 1 800 170 17 -26 0 1 "1000 uF" 1 "" 0 "neutral" 0>
  <GND * 5 800 360 0 0 0 0>
  <IProbe Is 1 940 70 -28 -26 0 3>
  <.DC DC1 1 1110 -130 0 44 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <GND * 5 380 300 0 0 0 0>
  <Vac V1 1 380 130 -66 -26 1 1 "180" 1 "60 Hz" 0 "0" 0 "0" 0>
  <R R1 1 490 20 -26 15 0 0 "100 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C1 1 490 100 -26 17 0 0 "1 uF" 1 "" 0 "neutral" 0>
  <Diode D6 1 630 60 -26 -91 0 2 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <Diode D8 1 730 60 -26 -91 0 2 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <Diode D9 1 630 120 -26 72 1 2 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <Diode D7 1 730 120 -26 72 1 2 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <VProbe Vs 1 1080 140 -16 28 0 3>
  <R R3 1 1140 310 15 -26 0 1 "500 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R Rs 1 940 150 15 -26 0 1 "220 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <.TR TR1 1 1120 -30 0 73 0 0 "lin" 1 "0" 1 "2" 1 "201" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <940 360 1140 360 "" 0 0 0 "">
  <940 340 940 360 "" 0 0 0 "">
  <940 260 940 280 "" 0 0 0 "">
  <1140 340 1140 360 "" 0 0 0 "">
  <1140 260 1140 280 "" 0 0 0 "">
  <940 180 940 200 "" 0 0 0 "">
  <940 180 1060 180 "" 0 0 0 "">
  <1140 180 1140 200 "" 0 0 0 "">
  <800 360 940 360 "" 0 0 0 "">
  <800 200 800 360 "" 0 0 0 "">
  <800 60 800 140 "" 0 0 0 "">
  <940 20 940 40 "" 0 0 0 "">
  <800 20 940 20 "" 0 0 0 "">
  <800 20 800 60 "" 0 0 0 "">
  <940 100 940 110 "" 0 0 0 "">
  <580 360 800 360 "" 0 0 0 "">
  <760 60 800 60 "" 0 0 0 "">
  <580 120 600 120 "" 0 0 0 "">
  <580 60 600 60 "" 0 0 0 "">
  <580 60 580 120 "" 0 0 0 "">
  <660 60 680 60 "" 0 0 0 "">
  <660 120 680 120 "" 0 0 0 "">
  <580 120 580 360 "" 0 0 0 "">
  <680 20 680 60 "" 0 0 0 "">
  <680 120 680 180 "" 0 0 0 "">
  <380 180 680 180 "" 0 0 0 "">
  <380 20 380 100 "" 0 0 0 "">
  <380 20 440 20 "" 0 0 0 "">
  <440 20 460 20 "" 0 0 0 "">
  <440 20 440 100 "" 0 0 0 "">
  <440 100 460 100 "" 0 0 0 "">
  <520 20 540 20 "" 0 0 0 "">
  <540 20 680 20 "" 0 0 0 "">
  <540 20 540 100 "" 0 0 0 "">
  <520 100 540 100 "" 0 0 0 "">
  <380 160 380 180 "" 0 0 0 "">
  <380 180 380 300 "" 0 0 0 "">
  <680 120 700 120 "" 0 0 0 "">
  <680 60 700 60 "" 0 0 0 "">
  <760 60 760 120 "" 0 0 0 "">
  <1060 110 1060 130 "" 0 0 0 "">
  <940 110 940 120 "" 0 0 0 "">
  <940 110 1060 110 "" 0 0 0 "">
  <1060 180 1140 180 "" 0 0 0 "">
  <1060 150 1060 180 "" 0 0 0 "">
  <1140 180 1140 180 "VR" 1170 150 0 "">
  <680 20 680 20 "out2" 710 -10 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>