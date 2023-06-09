<Qucs Schematic >
<Properties>
  <View=0,60,1131,744,1.5,145,28>
  <Grid=10,10,1>
  <DataSet=retificador_monofasico.dat>
  <DataDisplay=retificador_monofasico.dpl>
  <OpenDisplay=1>
  <Script=retificador_monofasico.m>
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
  <Diode D3 1 660 430 -41 -26 0 3 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <Diode D4 1 740 430 -41 -26 0 3 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <Diode D1 1 660 270 -41 -26 0 3 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <Diode D2 1 740 270 -41 -26 0 3 "1e-15 A" 0 "1" 0 "10 fF" 0 "0.5" 0 "0.7 V" 0 "0.5" 0 "0.0 fF" 0 "0.0" 0 "2.0" 0 "0.0 Ohm" 0 "0.0 ps" 0 "0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0" 0 "1 mA" 0 "26.85" 0 "3.0" 0 "1.11" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "1.0" 0 "normal" 0>
  <R Rc 1 800 350 15 -26 0 1 "50 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND *1 5 800 460 0 0 0 0>
  <GND *2 5 440 400 0 0 0 0>
  <Tr Tr1 1 570 350 -29 38 0 0 "11" 1>
  <Vac Vp 1 440 350 -96 -26 1 1 "127 V" 1 "60 Hz" 0 "0" 0 "0" 0>
  <.TR TR1 1 930 320 0 77 0 0 "lin" 1 "0" 1 "33 ms" 1 "1001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <.DC DC1 1 930 220 0 46 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
</Components>
<Wires>
  <540 300 540 320 "" 0 0 0 "">
  <540 380 540 400 "" 0 0 0 "">
  <440 400 540 400 "" 0 0 0 "">
  <440 300 440 320 "" 0 0 0 "">
  <440 380 440 400 "" 0 0 0 "">
  <600 380 650 380 "" 0 0 0 "">
  <600 320 660 320 "" 0 0 0 "">
  <660 300 660 320 "" 0 0 0 "">
  <660 320 660 400 "" 0 0 0 "">
  <650 370 650 380 "" 0 0 0 "">
  <650 370 670 370 "" 0 0 0 "">
  <670 370 670 380 "" 0 0 0 "">
  <740 300 740 380 "" 0 0 0 "">
  <740 380 740 400 "" 0 0 0 "">
  <670 380 740 380 "" 0 0 0 "">
  <660 460 740 460 "" 0 0 0 "">
  <660 240 740 240 "" 0 0 0 "">
  <740 460 800 460 "" 0 0 0 "">
  <740 240 800 240 "" 0 0 0 "">
  <800 240 800 320 "" 0 0 0 "">
  <800 380 800 460 "" 0 0 0 "">
  <440 300 540 300 "" 0 0 0 "">
  <440 300 440 300 "Vs" 470 270 0 "">
  <800 240 800 240 "V_Rc" 830 210 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
