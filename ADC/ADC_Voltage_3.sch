<Qucs Schematic 0.0.20>
<Properties>
  <View=-40,11,1062,605,1,0,0>
  <Grid=10,10,1>
  <DataSet=ADC_Voltage.dat>
  <DataDisplay=ADC_Voltage.dpl>
  <OpenDisplay=1>
  <Script=ADC_Voltage.m>
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
  <.DC DC1 1 600 30 0 39 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Vdc V1 1 410 290 18 -26 1 3 "5 V" 1>
  <R R4 1 410 470 15 -26 0 1 "470 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R3 1 410 370 15 -26 0 1 "470 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 5 410 540 0 0 0 0>
  <GND * 5 410 240 0 0 0 2>
  <C C1 1 170 470 -67 -26 0 3 "22 uF" 1 "" 0 "neutral" 0>
  <Vac V2 1 80 300 -80 -26 1 1 "311.127 V" 1 "60 Hz" 0 "0" 0 "0" 0>
  <R R1 1 170 370 15 -26 0 1 "3.3 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C2 1 230 280 -26 4 0 0 "100 nF" 1 "" 0 "neutral" 0>
  <R R2 1 170 190 15 -26 0 1 "467 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 5 910 520 0 0 0 0>
  <R R7 1 910 470 15 -26 0 1 "470 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R9 1 910 370 15 -26 0 1 "470 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vdc V4 1 910 190 18 -26 1 3 "5 V" 1>
  <GND * 5 910 140 0 0 0 2>
  <R R8 1 910 270 15 -26 0 1 "470 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vac V3 1 770 370 -80 -26 1 1 "179.6 V" 1 "60 Hz" 0 "0" 0 "0" 0>
  <.TR TR1 1 420 30 0 63 0 0 "lin" 1 "0" 1 "33 ms" 1 "500" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
</Components>
<Wires>
  <410 400 410 420 "" 0 0 0 "">
  <410 420 410 440 "" 0 0 0 "">
  <410 500 410 520 "" 0 0 0 "">
  <410 520 410 540 "" 0 0 0 "">
  <410 240 410 260 "" 0 0 0 "">
  <410 320 410 340 "" 0 0 0 "">
  <170 520 410 520 "" 0 0 0 "">
  <170 420 410 420 "" 0 0 0 "">
  <170 420 170 440 "" 0 0 0 "">
  <170 500 170 520 "" 0 0 0 "">
  <80 420 170 420 "" 0 0 0 "">
  <80 330 80 420 "" 0 0 0 "">
  <170 400 170 420 "" 0 0 0 "">
  <170 280 170 340 "" 0 0 0 "">
  <170 280 200 280 "" 0 0 0 "">
  <260 280 300 280 "" 0 0 0 "">
  <80 140 80 270 "" 0 0 0 "">
  <170 220 170 280 "Vout" 200 240 54 "">
  <80 140 170 140 "" 0 0 0 "">
  <170 140 170 160 "" 0 0 0 "">
  <910 500 910 520 "" 0 0 0 "">
  <910 140 910 160 "" 0 0 0 "">
  <910 220 910 240 "" 0 0 0 "">
  <770 320 770 340 "" 0 0 0 "">
  <910 300 910 320 "" 0 0 0 "">
  <910 320 910 340 "" 0 0 0 "">
  <770 320 910 320 "" 0 0 0 "">
  <770 400 770 430 "" 0 0 0 "">
  <910 400 910 430 "" 0 0 0 "">
  <910 430 910 440 "" 0 0 0 "">
  <770 430 910 430 "" 0 0 0 "">
  <410 420 410 420 "Vref" 440 390 0 "">
  <300 280 300 280 "VoutB" 320 250 0 "">
  <80 140 80 140 "Vin" 50 100 0 "">
  <910 320 910 320 "Vout2" 940 290 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
</Paintings>
