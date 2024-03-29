<Qucs Schematic 1.0.1>
<Properties>
  <View=-50,180,1320,889,1.1,0,0>
  <Grid=10,10,1>
  <DataSet=press_sensor_voltage_divider.dat>
  <DataDisplay=press_sensor_voltage_divider.dpl>
  <OpenDisplay=1>
  <Script=press_sensor_voltage_divider.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=T�tulo>
  <FrameText1=Desenhado por:>
  <FrameText2=Data:>
  <FrameText3=Revis�o:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <Vdc V1 0 820 420 -98 -26 1 1 "Vs" 1>
  <GND * 5 1030 540 0 0 0 0>
  <R R4 1 1030 470 15 -26 0 1 "6.8 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C3 1 1170 470 17 -26 0 1 "10 nF" 1 "" 0 "neutral" 0>
  <R R5 1 890 470 15 -26 0 1 "6.8 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R3 1 1030 330 15 -26 0 1 "12 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C2 0 890 330 17 -26 0 1 "47 nF" 1 "" 0 "neutral" 0>
  <GND *1 5 300 540 0 0 0 0>
  <C C4 1 440 470 17 -26 0 1 "1 nF" 1 "" 0 "neutral" 0>
  <R R8 1 300 330 15 -26 0 1 "68 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R9 1 160 330 15 -26 0 1 "68 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R7 1 160 470 15 -26 0 1 "66 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vrect V2 1 610 420 18 -26 0 1 "4.5 V" 1 "0.5 ms" 1 "0.5 ms" 1 "0.1 us" 0 "0.1 ns" 0 "0 ns" 0>
  <.SW SW1 1 0 580 0 76 0 0 "DC1" 1 "lin" 1 "Vs" 1 "0 V" 1 "5 V" 1 "101" 1 "false" 0>
  <.TR TR1 1 190 580 0 76 0 0 "lin" 1 "0" 1 "5 ms" 1 "201" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <.DC DC1 1 170 780 0 45 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
</Components>
<Wires>
  <820 450 820 520 "" 0 0 0 "">
  <1170 500 1170 520 "" 0 0 0 "">
  <1030 500 1030 520 "" 0 0 0 "">
  <1030 520 1030 540 "" 0 0 0 "">
  <1030 520 1170 520 "" 0 0 0 "">
  <820 520 890 520 "" 0 0 0 "">
  <890 520 1030 520 "" 0 0 0 "">
  <890 500 890 520 "" 0 0 0 "">
  <1030 400 1030 440 "" 0 0 0 "">
  <890 400 890 440 "" 0 0 0 "">
  <890 400 1030 400 "" 0 0 0 "">
  <1170 400 1170 440 "" 0 0 0 "">
  <1030 400 1170 400 "" 0 0 0 "">
  <1030 360 1030 400 "" 0 0 0 "">
  <820 280 820 390 "" 0 0 0 "">
  <1030 280 1030 300 "" 0 0 0 "">
  <820 280 890 280 "" 0 0 0 "">
  <890 280 1030 280 "" 0 0 0 "">
  <890 280 890 300 "" 0 0 0 "">
  <890 360 890 400 "" 0 0 0 "">
  <610 520 820 520 "" 0 0 0 "">
  <610 450 610 520 "" 0 0 0 "">
  <610 280 820 280 "" 0 0 0 "">
  <610 280 610 390 "Vin" 640 340 92 "">
  <440 500 440 520 "" 0 0 0 "">
  <300 500 300 520 "" 0 0 0 "">
  <300 520 300 540 "" 0 0 0 "">
  <300 520 440 520 "" 0 0 0 "">
  <160 520 300 520 "" 0 0 0 "">
  <160 500 160 520 "" 0 0 0 "">
  <300 400 300 440 "" 0 0 0 "">
  <160 400 160 440 "" 0 0 0 "">
  <160 400 300 400 "" 0 0 0 "">
  <440 400 440 440 "" 0 0 0 "">
  <300 400 440 400 "" 0 0 0 "">
  <300 360 300 400 "" 0 0 0 "">
  <300 280 300 300 "" 0 0 0 "">
  <160 280 300 280 "" 0 0 0 "">
  <160 280 160 300 "" 0 0 0 "">
  <160 360 160 400 "" 0 0 0 "">
  <300 280 610 280 "" 0 0 0 "">
  <1030 400 1030 400 "Vout" 1040 370 0 "">
  <300 400 300 400 "Vout2" 310 370 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Rectangle 850 220 430 380 #000000 3 1 #c0c0c0 1 0>
  <Text 1110 230 12 #000000 0 "std board circuit">
  <Text 470 310 12 #000000 0 "sensor simulation from 0,5 to 4,5 V">
</Paintings>
